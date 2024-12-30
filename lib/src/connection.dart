import 'dart:async';
import 'dart:collection';
import 'dart:io'
    show InternetAddress, InternetAddressType, Socket, SocketException;
import 'dart:typed_data';

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/message_handler.dart';
import 'package:dart_mpd/src/parser/parse_response.dart';

class MpdConnection {
  MpdConnection({
    required MpdConnectionDetails connectionDetails,
    required void Function()? onConnect,
    required void Function(Object, StackTrace)? handleConnectError,
    required void Function(String)? onSend,
    required void Function(Uint8List)? onData,
    required void Function(MpdResponse)? onResponse,
    required void Function()? onDone,
    required void Function(Object, StackTrace)? handleError,
  })  : _connectionDetails = connectionDetails,
        _onConnect = onConnect,
        _handleConnectError = handleConnectError,
        _onSend = onSend,
        _onData = onData,
        _onResponse = onResponse,
        _onDone = onDone,
        _handleError = handleError;

  final MpdConnectionDetails _connectionDetails;

  final void Function()? _onConnect;
  final void Function(Object error, StackTrace stackTrace)? _handleConnectError;
  final void Function(String)? _onSend;
  final void Function(Uint8List)? _onData;
  final void Function(MpdResponse)? _onResponse;
  final void Function()? _onDone;
  final void Function(Object error, StackTrace stackTrace)? _handleError;

  final _requestQueue = Queue<Future<void> Function()>();
  bool _isProcessingQueue = false;

  Socket? _socket;
  MessageHandler? _messageHandler;

  Completer<MpdResponse> _responseCompleter = Completer();
  String? _protocolVersion;

  bool get isConnected => _socket != null;
  String? get protocolVersion => _protocolVersion;

  Future<void> connect() async {
    try {
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
    } catch (e, st) {
      if (_handleConnectError != null) {
        return _handleConnectError!(e, st);
      }

      rethrow;
    }

    _onConnect?.call();

    void onDone() {
      close();
      _onDone?.call();
    }

    _messageHandler = MessageHandler();

    _socket!.listen(
      (data) {
        _onData?.call(data);
        _messageHandler?.onData(data);
      },
      onDone: onDone,
      onError: _handleError,
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

  void close() {
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

        if (!isConnected) {
          // connection failed but didn't throw (connection error was handled
          // via `_handleConnectError`)
          completer.completeError(
            const SocketException(
              'Unable to establish connection to MPD socket',
            ),
          );
          return;
        }

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
    extends StreamTransformerBase<MpdRawMessage, MpdResponse> {
  const _MpdResponseTransformer();

  @override
  Stream<MpdResponse> bind(Stream<MpdRawMessage> stream) {
    return stream.map(parseMpdResponse);
  }
}
