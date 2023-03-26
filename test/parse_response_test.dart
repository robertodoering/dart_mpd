import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/parse_response.dart';
import 'package:test/test.dart';

void main() {
  group(parseMpdResponse, () {
    test('parses greeting message', () {
      final response = parseMpdResponse(_asUtf8('OK MPD 0.21.0\n'));

      expect(response, isA<MpdResponseGreeting>());
      expect(
        response.whenOrNull(greeting: (protocolVersion) => protocolVersion),
        equals('0.21.0'),
      );
    });

    test('parses error message', () {
      final response = parseMpdResponse(
        _asUtf8('ACK [50@0] {play} No such song\n'),
      );

      expect(response, isA<MpdResponseError>());
      expect(
        response.whenOrNull(error: (message) => message),
        equals('[50@0] {play} No such song'),
      );
    });

    test('parses single value with one key value pair', () {
      final response = parseMpdResponse(_asUtf8('volume: 100\nOK\n'));

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, binary) => values),
        equals([
          {'volume': '100'}
        ]),
      );
      expect(response.whenOrNull(ok: (values, binary) => binary), isNull);
    });

    test('parses single value with multiple key value pairs', () {
      final response = parseMpdResponse(
        _asUtf8('volume: 100\nrepeat: 1\nOK\n'),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, binary) => values),
        equals([
          {'volume': '100', 'repeat': '1'}
        ]),
      );
      expect(response.whenOrNull(ok: (values, binary) => binary), isNull);
    });

    test('parses list of values with one key value pair', () {
      final response = parseMpdResponse(
        _asUtf8(
          'file: /home/foo/Music/bar.ogg\n'
          'file: /home/foo/Music/bar2.ogg\n'
          'OK\n',
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, binary) => values),
        equals([
          {'file': '/home/foo/Music/bar.ogg'},
          {'file': '/home/foo/Music/bar2.ogg'},
        ]),
      );
      expect(response.whenOrNull(ok: (values, binary) => binary), isNull);
    });

    test('parses list of values with multiple key value pairs', () {
      final response = parseMpdResponse(
        _asUtf8(
          'file: /home/foo/Music/bar.ogg\n'
          'Title: bar\n'
          'Artist: foo\n'
          'file: /home/foo/Music/bar2.ogg\n'
          'Title: bar2\n'
          'Artist: foo2\n'
          'OK\n',
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, binary) => values),
        equals([
          {
            'file': '/home/foo/Music/bar.ogg',
            'Title': 'bar',
            'Artist': 'foo',
          },
          {
            'file': '/home/foo/Music/bar2.ogg',
            'Title': 'bar2',
            'Artist': 'foo2',
          },
        ]),
      );
      expect(response.whenOrNull(ok: (values, binary) => binary), isNull);
    });

    test('parses list of values with unique keys', () {
      final response = parseMpdResponse(
        _asUtf8(
          'file: /home/foo/Music/bar.ogg\n'
          'Title: bar\n'
          'Artist: foo\n'
          'directory: /home/foo\n'
          'directory: /home/foo/Music\n'
          'OK\n',
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, binary) => values),
        equals([
          {'file': '/home/foo/Music/bar.ogg', 'Title': 'bar', 'Artist': 'foo'},
          {'directory': '/home/foo'},
          {'directory': '/home/foo/Music'},
        ]),
      );
      expect(response.whenOrNull(ok: (values, binary) => binary), isNull);
    });

    test('parses list of values with multiple common keys', () {
      final response = parseMpdResponse(
        _asUtf8(
          'plugin: mad\n'
          'suffix: mp3\n'
          'suffix: mp2\n'
          'mime_type: audio/mpeg\n'
          'plugin: vorbis\n'
          'suffix: ogg\n'
          'suffix: oga\n'
          'mime_type: application/ogg\n'
          'mime_type: audio/ogg\n'
          'mime_type: audio/vorbis\n'
          'OK\n',
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, binary) => values),
        equals([
          {
            'plugin': 'mad',
            'suffix': 'mp3,mp2',
            'mime_type': 'audio/mpeg',
          },
          {
            'plugin': 'vorbis',
            'suffix': 'ogg,oga',
            'mime_type': 'application/ogg,audio/ogg,audio/vorbis'
          },
        ]),
      );
      expect(response.whenOrNull(ok: (values, binary) => binary), isNull);
    });

    test('parses binary data', () {
      final response = parseMpdResponse(
        Uint8List.fromList('binary: 4\n1234\nOK\n'.codeUnits),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, binary) => values),
        equals([
          {'binary': '4'}
        ]),
      );
      expect(
        response.whenOrNull(ok: (values, binary) => binary),
        equals('1234'.codeUnits),
      );
    });
  });
}

Uint8List _asUtf8(String value) => Uint8List.fromList(utf8.encode(value));
