import 'dart:async';
import 'dart:io' show Socket, InternetAddress, InternetAddressType;
import 'dart:typed_data';

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/parse_response.dart';

class MpdConnection {
  MpdConnection({
    required MpdConnectionDetails connectionDetails,
    void Function()? onConnect,
    void Function(MpdResponse)? onData,
    void Function()? onDone,
    void Function(Object, StackTrace)? onError,
  })  : _connectionDetails = connectionDetails,
        _onConnect = onConnect,
        _onData = onData,
        _onDone = onDone,
        _onError = onError;

  final MpdConnectionDetails _connectionDetails;

  final void Function()? _onConnect;
  final void Function(MpdResponse data)? _onData;
  final void Function()? _onDone;
  final void Function(Object error, StackTrace stackTrace)? _onError;

  Socket? _socket;
  StreamSubscription<MpdResponse>? _subscription;
  Completer<MpdResponse> _completer = Completer();
  String? _protocolVersion;

  bool get isConnected => _socket != null;
  String? get protocolVersion => _protocolVersion;

  Future<void> connect() async {
    _socket = await Socket.connect(
      InternetAddress(
        _connectionDetails.host,
        type: _connectionDetails.port == 0 ? InternetAddressType.unix : null,
      ),
      _connectionDetails.port,
      timeout: _connectionDetails.timeout,
    );

    _onConnect?.call();

    void onDone() {
      _onDone?.call();

      close();
    }

    void onError(Object error, StackTrace stackTrace) {
      _onError?.call(error, stackTrace);
    }

    final stream =
        _socket!.transform(const _MpdResponseTransformer()).asBroadcastStream()
          ..listen(
            _onData,
            onDone: onDone,
            onError: onError,
          );

    _subscription = stream.listen((data) {
      _completer.complete(data);
      _completer = Completer();
      _subscription!.pause();
    });

    final response = await _read();

    await response.maybeWhen(
      greeting: (protocolVersion) async => _protocolVersion = protocolVersion,
      orElse: () async {
        await close();
        throw MpdClientException(
          'unexpected event after connection: $response',
        );
      },
    );
  }

  Future<void> close() async {
    await _socket?.close();
    _socket = null;

    await _subscription?.cancel();
    _subscription = null;

    // prevent potentially open futures from completing after re-connecting
    _completer = Completer();

    _protocolVersion = null;
  }

  Future<MpdResponse> send(String event) async {
    if (!isConnected) await connect();

    _socket?.write('$event\n');
    await _socket?.flush();

    return _read();
  }

  Future<MpdResponse> _read() async {
    if (!isConnected) throw const MpdClientException('not connected');

    _subscription!.resume();
    return _completer.future;
  }
}

class _MpdResponseTransformer
    extends StreamTransformerBase<Uint8List, MpdResponse> {
  const _MpdResponseTransformer();
  @override
  Stream<MpdResponse> bind(Stream<Uint8List> stream) {
    return stream.map(parseMpdResponse);
  }
}
