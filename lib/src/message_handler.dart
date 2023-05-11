import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';

final _greetingSequence = utf8.encode('OK MPD ');
final _errorSequence = utf8.encode('ACK ');
final _okSequence = utf8.encode('\nOK\n');
final _okMessage = utf8.encode('OK\n');

/// Frames the incoming data into complete mpd messages.
///
/// This is needed to handle messages when the incoming packets are partially
/// received or concatenated together.
///
/// To determine the end of a message we check for an end sequence.
/// Note: This theoretically could break since mpd can also send arbitrary byte
/// data that could contain this sequence.
class MessageHandler {
  final _messageController = StreamController<List<int>>();

  Stream<List<int>> get messageStream => _messageController.stream;

  final _dataBuffer = <int>[];

  Future<void> close() => _messageController.close();

  void onData(List<int> data) {
    _dataBuffer.addAll(data);
    _processData();
  }

  void _processData() {
    if (const ListEquality().equals(_dataBuffer, _okMessage)) {
      // only OK received
      _messageController.add([..._dataBuffer]);
      _dataBuffer.clear();
    }

    final greeting = _findSequence(_dataBuffer, _greetingSequence);
    final error = _findSequence(_dataBuffer, _errorSequence);
    final ok = _findSequence(_dataBuffer, _okSequence);

    final index = [greeting, error, ok].reduce(
      (value, element) {
        if (element == -1) return value;
        if (value == -1) return element;
        return value != -1 && value < element ? value : element;
      },
    );

    if (index == -1) {
      // message has only been partially received - wait for more data
      return;
    }

    int endIndex = -1;
    for (int i = index + 1; i < _dataBuffer.length; ++i) {
      if (_dataBuffer[i] == 10) {
        // newline - end of message
        endIndex = i;
        break;
      }
    }

    if (endIndex == -1) {
      // end of message line has only been partially received - wait for more
      // data
      return;
    }

    if (endIndex == _dataBuffer.length - 1) {
      // data buffer contains a single message
      _messageController.add([..._dataBuffer]);
      _dataBuffer.clear();
    } else {
      // data buffer contains another (potentially partial) message
      _messageController.add(_dataBuffer.sublist(0, endIndex + 1));
      final additionalData = _dataBuffer.sublist(endIndex + 1);
      _dataBuffer.clear();
      onData(additionalData);
    }
  }
}

int _findSequence(List<int> utf8List, List<int> sequence) {
  for (int i = 0; i <= utf8List.length - sequence.length; ++i) {
    bool found = true;

    for (int j = 0; j < sequence.length; ++j) {
      if (utf8List[i + j] != sequence[j]) {
        found = false;
        break;
      }
    }

    if (found) return i;
  }

  return -1;
}
