import 'dart:async';
import 'dart:convert';

import 'package:dart_mpd/src/parser/parser_util.dart';

const _binaryKey = 'binary';
const _newlineKeyCode = 10;

class MpdRawMessage {
  const MpdRawMessage({
    required this.lines,
    required this.binary,
  });

  final List<String> lines;
  final List<int> binary;
}

/// Frames the incoming data into complete mpd messages.
///
/// This is needed to handle messages when the incoming packets are partially
/// received or concatenated together.
class MessageHandler {
  final _messageController = StreamController<MpdRawMessage>();
  Stream<MpdRawMessage> get messageStream => _messageController.stream;

  final _dataBuffer = <int>[];
  final _linesBuffer = <String>[];
  final _binaryBuffer = <int>[];
  int? _expectedBinaryLength;

  Future<void> close() => _messageController.close();

  void onData(List<int> data) {
    _dataBuffer.addAll(data);
    _handleData();
  }

  void _handleData([int? remainingBufferLength]) {
    final data = [..._dataBuffer];
    _dataBuffer.clear();

    final iterator = data.iterator;
    final byteBuffer = <int>[];

    while (iterator.moveNext()) {
      final value = iterator.current;

      if (_parseBinary(value, iterator)) {
        continue;
      }

      if (value != _newlineKeyCode) {
        byteBuffer.add(value);
        continue;
      }

      final line = utf8.decode(byteBuffer);
      byteBuffer.clear();

      _linesBuffer.add(line);

      if (_parseEndOfMessage(line)) {
        break;
      }

      if (line.startsWith(_binaryKey)) {
        // binary data follows
        final (_, value) = parseKeyValuePair(line);
        _expectedBinaryLength = int.parse(value);
      }
    }

    // add remaining bytes of a potentially concatenated message to the buffer
    _dataBuffer.addAll(byteBuffer);
    while (iterator.moveNext()) {
      _dataBuffer.add(iterator.current);
    }

    if (_dataBuffer.isNotEmpty && _dataBuffer.length != remainingBufferLength) {
      _handleData(_dataBuffer.length);
    }
  }

  bool _parseEndOfMessage(String line) {
    if (line == messageEnd ||
        line.startsWith(greetingPrefix) ||
        line.startsWith(errorPrefix)) {
      // end of message received
      _messageController.add(
        MpdRawMessage(
          lines: [..._linesBuffer],
          binary: [..._binaryBuffer],
        ),
      );

      _linesBuffer.clear();
      _binaryBuffer.clear();

      return true;
    }

    return false;
  }

  bool _parseBinary(int value, Iterator<int> iterator) {
    if (_expectedBinaryLength == null) return false;

    _binaryBuffer.add(value);

    if (_binaryBuffer.length == _expectedBinaryLength) {
      // skip next newline
      iterator.moveNext();
      _expectedBinaryLength = null;
    }

    return true;
  }
}
