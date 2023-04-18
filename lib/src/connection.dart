import 'dart:async';
import 'dart:collection';
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

  final _requestQueue = Queue<Future<void> Function()>();
  bool _isProcessingQueue = false;

  Socket? _socket;
  StreamSubscription<MpdResponse>? _subscription;
  Completer<MpdResponse> _responseCompleter = Completer();
  String? _protocolVersion;

  bool get isConnected => _socket != null;
  String? get protocolVersion => _protocolVersion;

  Future<void> connect() async {
    _socket = await Socket.connect(
      _connectionDetails.port == 0
          ? InternetAddress(
              _connectionDetails.host,
              type: InternetAddressType.unix,
            )
          : _connectionDetails.host,
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
      _responseCompleter.complete(data);
      _responseCompleter = Completer();
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
    _responseCompleter = Completer();

    _protocolVersion = null;
  }

  Future<MpdResponse> send(String event) async {
    final completer = Completer<MpdResponse>();

    _requestQueue.add(() async {
      try {
        if (!isConnected) await connect();

        _socket!.write('$event\n');
        await _socket!.flush();

        completer.complete(await _read());
      } catch (e) {
        completer.completeError(e);
      }
    });

    if (!_isProcessingQueue) _processQueue();

    return completer.future;
  }

  Future<MpdResponse> _read() async {
    if (!isConnected) throw const MpdClientException('not connected');

    _subscription!.resume();
    return _responseCompleter.future;
  }

  Future<void> _processQueue() async {
    _isProcessingQueue = true;

    while (_requestQueue.isNotEmpty) {
      final request = _requestQueue.removeFirst();
      await request();
    }

    _isProcessingQueue = false;
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
