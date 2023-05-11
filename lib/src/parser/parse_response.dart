import 'dart:convert';

import 'package:dart_mpd/dart_mpd.dart';

const _greetingPrefix = 'OK MPD ';
const _errorPrefix = 'ACK ';

// keys that can't appear in the same data set
const _uniqueKeys = [
  ['directory', 'file']
];

// keys that can appear multiple times per data set
const _commonKeys = ['suffix', 'mime_type'];

/// Parses the raw message from mpd into a [MpdResponse].
///
/// There are three types of responses:
/// - [MpdResponse.greeting] - the greeting message from mpd
/// - [MpdResponse.error] - an error message from mpd
/// - [MpdResponse.ok] - a successful response from mpd
///
/// A successful response can contain:
/// - no values
/// - a single set of key value pairs
/// - multiple sets of key value pairs
/// and may contain binary data.
///
/// To determine if a new key value pair is a new set of values, we check if the
/// key is already in the current set of values. If it is, we add it to a new
/// set.
///
/// Exceptions to this rule are:
/// - Responses listing files/directories where a new set is assumed when either
///  'file' or 'directory' is received (e.g. `lsinfo`).
/// - Responses where a set can contain multiple values for the a single key
///   (e.g. `decoders`).
///   In that case, we append the new value to the existing value with a comma.
///
/// See: https://mpd.readthedocs.io/en/stable/protocol.html#protocol-overview
MpdResponse parseMpdResponse(List<int> data) {
  final values = <Map<String, MpdValue>>[];
  final valuesBuffer = <String, MpdValue>{};

  List<int>? binary;

  final iterator = data.iterator;
  final byteBuffer = <int>[];

  while (iterator.moveNext()) {
    final value = iterator.current;

    if (value == 10) {
      // newline

      final line = utf8.decode(byteBuffer);
      byteBuffer.clear();

      // end
      if (line == 'OK') break;

      // greeting
      if (line.startsWith(_greetingPrefix)) {
        return MpdResponse.greeting(
          protocolVersion: line.substring(_greetingPrefix.length),
        );
      }

      // error
      if (line.startsWith(_errorPrefix)) {
        return MpdResponse.error(
          message: line.substring(_errorPrefix.length),
        );
      }

      // key value pair
      if (line.contains(':')) {
        final pair = line.split(':');

        final key = pair[0];
        final value = pair[1].substring(1);

        if (valuesBuffer[key] != null && _commonKeys.contains(key)) {
          // add to existing value
          final existingValue = valuesBuffer[key]!.asList();
          valuesBuffer[key] = MpdValueMultiple([...existingValue, value]);
        } else if (valuesBuffer[key] != null ||
            _uniqueKeys.any(
              (pair) =>
                  pair.any((e) => e == key) &&
                  pair.any(valuesBuffer.keys.contains),
            )) {
          // assume additional data set
          values.add({...valuesBuffer});
          valuesBuffer.clear();
          valuesBuffer[key] = MpdValueSingle(value);
        } else {
          // new key value pair
          valuesBuffer[key] = MpdValueSingle(value);
        }

        // binary data follows
        if (key == 'binary') {
          binary = _parseBinary(iterator, int.parse(value));
        }
      } else {
        assert(
          false,
          'unhandled line in response: $line, $valuesBuffer, $values',
        );
      }
    } else {
      byteBuffer.add(value);
    }
  }

  if (valuesBuffer.isNotEmpty) values.add(valuesBuffer);

  return MpdResponse.ok(
    values: values,
    binary: binary,
  );
}

List<int> _parseBinary(Iterator<int> iterator, int bytes) {
  final binary = [
    for (var i = 0; i < bytes && iterator.moveNext(); i++) iterator.current,
  ];

  // skip newline
  iterator.moveNext();

  return binary;
}
