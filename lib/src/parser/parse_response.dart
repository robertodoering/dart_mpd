import 'dart:convert';

import 'package:dart_mpd/dart_mpd.dart';

const _newlineKeyCode = 10;
const _greetingPrefix = 'OK MPD ';
const _errorPrefix = 'ACK ';

// songfile tags as defined in
// https://mpd.readthedocs.io/en/stable/protocol.html#tags
const _tags = [
  'artist',
  'artistsort',
  'album',
  'albumsort',
  'albumartist',
  'albumartistsort',
  'title',
  'track',
  'name',
  'genre',
  'date',
  'originaldate',
  'composer',
  'composersort',
  'performer',
  'conductor',
  'work',
  'ensemble',
  'movement',
  'movementnumber',
  'location',
  'grouping',
  'comment',
  'disc',
  'label',
  'musicbrainz_artistid',
  'musicbrainz_albumid',
  'musicbrainz_albumartistid',
  'musicbrainz_trackid',
  'musicbrainz_releasetrackid',
  'musicbrainz_workid',
];

// keys that can't appear in the same data set
const _uniqueKeys = [
  ['directory', 'file']
];

// keys that can appear multiple times per data set
const _commonKeys = ['suffix', 'mime_type', ..._tags];

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
///   In that case, we append the new value to the existing value.
///
/// See: https://mpd.readthedocs.io/en/stable/protocol.html#protocol-overview
MpdResponse parseMpdResponse(List<int> data) {
  final values = <Map<String, List<String>>>[];
  final valuesBuffer = <String, List<String>>{};

  List<int>? binary;

  final iterator = data.iterator;
  final byteBuffer = <int>[];

  while (iterator.moveNext()) {
    final value = iterator.current;

    if (value != _newlineKeyCode) {
      byteBuffer.add(value);
      continue;
    }

    final line = utf8.decode(byteBuffer);
    byteBuffer.clear();

    // message end
    if (line == 'OK') {
      break;
    }

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
      final (key, value) = _parseKeyValuePair(line, valuesBuffer, values);

      // binary data follows
      if (key == 'binary') {
        binary = _parseBinary(iterator, int.parse(value));
      }

      continue;
    }

    assert(
      false,
      'Unhandled line in mpd response.\n'
      'This likely indicates an issue in dart_mpd. Please create an issue at '
      'https://github.com/robertodoering/dart_mpd/issues\n\n'
      'line: $line\n'
      'valuesBuffer: $valuesBuffer\n'
      'values: $values\n',
    );
  }

  if (valuesBuffer.isNotEmpty) {
    values.add(valuesBuffer);
  }

  return MpdResponse.ok(
    values: values,
    binary: binary,
  );
}

(String, String) _parseKeyValuePair(
  String line,
  Map<String, List<String>> valuesBuffer,
  List<Map<String, List<String>>> values,
) {
  // split on first colon
  final pair = line.split(RegExp('(?<!:.*):'));

  final key = pair[0];
  final value = pair[1].substring(1);

  if (valuesBuffer[key] != null && _commonKeys.containsIgnoreCase(key)) {
    // add to existing value
    valuesBuffer[key]?.add(value);
  } else if (_isAdditionalDataSet(key, valuesBuffer)) {
    // create new set of values
    values.add({...valuesBuffer});
    valuesBuffer.clear();
    valuesBuffer[key] = [value];
  } else {
    valuesBuffer[key] = [value];
  }

  return (key, value);
}

List<int> _parseBinary(Iterator<int> iterator, int bytes) {
  final binary = [
    for (var i = 0; i < bytes && iterator.moveNext(); i++) iterator.current,
  ];

  // skip following newline
  iterator.moveNext();

  return binary;
}

bool _isAdditionalDataSet(String key, Map<String, List<String>> valuesBuffer) {
  if (valuesBuffer[key] != null) return true;

  return _uniqueKeys.any(
    (pair) =>
        pair.containsIgnoreCase(key) && pair.any(valuesBuffer.keys.contains),
  );
}

extension on Iterable<String> {
  bool containsIgnoreCase(String value) => any(
        (e) => e.toLowerCase() == value.toLowerCase(),
      );
}
