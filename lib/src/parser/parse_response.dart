import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/message_handler.dart';
import 'package:dart_mpd/src/parser/parser_util.dart';

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
///   (e.g. `decoders`, any tags in a song, etc.).
///   In that case, we append the new value to the existing value.
///
/// See: https://mpd.readthedocs.io/en/stable/protocol.html#protocol-overview
MpdResponse parseMpdResponse(MpdRawMessage data) {
  final values = <Map<String, List<String>>>[];
  final valuesBuffer = <String, List<String>>{};

  for (final line in data.lines) {
    if (line == messageEnd) {
      if (valuesBuffer.isNotEmpty) values.add(valuesBuffer);

      return MpdResponse.ok(
        values: values,
        binary: data.binary,
      );
    }

    if (line.startsWith(greetingPrefix)) {
      _debugAssertNoResponseValues(data);

      return MpdResponse.greeting(
        protocolVersion: line.substring(greetingPrefix.length),
      );
    }

    if (line.startsWith(errorPrefix)) {
      _debugAssertNoResponseValues(data);

      return MpdResponse.error(
        message: line.substring(errorPrefix.length),
      );
    }

    assert(
      line.contains(':'),
      'Unhandled line in mpd response.\n'
      'This likely indicates an issue in dart_mpd. Please create an issue at '
      'https://github.com/robertodoering/dart_mpd/issues\n\n'
      'line: $line\n'
      'valuesBuffer: $valuesBuffer\n'
      'values: $values\n',
    );

    final (key, value) = parseKeyValuePair(line);

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
  }

  throw MpdClientException(
    'Incorrectly parsed mpd response.\n'
    'This likely indicates an issue in dart_mpd. Please create an issue at '
    'https://github.com/robertodoering/dart_mpd/issues',
  );
}

void _debugAssertNoResponseValues(MpdRawMessage data) {
  assert(
    data.lines.length == 1 && data.binary.isEmpty,
    'Incorrectly parsed mpd response.\n'
    'This likely indicates an issue in dart_mpd. Please create an issue at '
    'https://github.com/robertodoering/dart_mpd/issues\n\n'
    'lines: ${data.lines}\n'
    'binary: ${data.binary}',
  );
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
