import 'dart:async';
import 'dart:collection';
import 'dart:io' show Socket, InternetAddress, InternetAddressType;
import 'dart:typed_data';

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/message_handler.dart';
import 'package:dart_mpd/src/parser/parse_response.dart';

class MpdConnection {
  MpdConnection({
    required MpdConnectionDetails connectionDetails,
    required void Function()? onConnect,
    required void Function(String)? onSend,
    required void Function(Uint8List)? onData,
    required void Function(MpdResponse)? onResponse,
    required void Function()? onDone,
    required void Function(Object, StackTrace)? onError,
  })  : _connectionDetails = connectionDetails,
        _onConnect = onConnect,
        _onSend = onSend,
        _onData = onData,
        _onResponse = onResponse,
        _onDone = onDone,
        _onError = onError;

  final MpdConnectionDetails _connectionDetails;

  final void Function()? _onConnect;
  final void Function(String)? _onSend;
  final void Function(Uint8List)? _onData;
  final void Function(MpdResponse)? _onResponse;
  final void Function()? _onDone;
  final void Function(Object error, StackTrace stackTrace)? _onError;

  final _requestQueue = Queue<Future<void> Function()>();
  bool _isProcessingQueue = false;

  Socket? _socket;
  MessageHandler? _messageHandler;

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

    _messageHandler = MessageHandler();

    _socket!.listen(
      (data) {
        _onData?.call(data);
        _messageHandler?.onData(data);
      },
      onDone: onDone,
      onError: onError,
    );

    _messageHandler!.messageStream
        .transform(_MpdResponseTransformer())
        .listen(_responseListener);

    final response = await _read();

    _protocolVersion = switch (response) {
      MpdResponseGreeting(:final protocolVersion) => protocolVersion,
      MpdResponseOk _ => throw MpdUnexpectedResponse(response),
      MpdResponseError _ => throw response,
    };
  }

  void _responseListener(MpdResponse response) {
    _onResponse?.call(response);

    _responseCompleter.complete(response);
    _responseCompleter = Completer();
  }

  Future<void> close() async {
    _socket?.close().ignore();
    _socket = null;

    _messageHandler?.close().ignore();
    _messageHandler = null;

    // prevent potentially open futures from completing after re-connecting
    _responseCompleter = Completer();

    _protocolVersion = null;
  }

  Future<MpdResponse> send(String event) async {
    final completer = Completer<MpdResponse>();

    _requestQueue.add(() async {
      try {
        if (!isConnected) await connect();

        _onSend?.call(event);
        _socket!.write('$event\n');

        final response = await _read();

        completer.complete(response);
      } catch (e) {
        completer.completeError(e);
      }
    });

    if (!_isProcessingQueue) _processQueue();

    return completer.future;
  }

  Future<MpdResponse> _read() async {
    if (!isConnected) throw const MpdClientException('not connected');

    final response = await _responseCompleter.future;
    return response;
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
    extends StreamTransformerBase<List<int>, MpdResponse> {
  const _MpdResponseTransformer();
  @override
  Stream<MpdResponse> bind(Stream<List<int>> stream) {
    return stream.map(parseMpdResponse);
  }
}
