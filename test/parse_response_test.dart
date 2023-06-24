import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/message_handler.dart';
import 'package:dart_mpd/src/parser/parse_response.dart';
import 'package:test/test.dart';

void main() {
  group('$parseMpdResponse', () {
    test('parses greeting message', () {
      final response = parseMpdResponse(
        MpdRawMessage(lines: ['OK MPD 0.21.0'], binary: const []),
      );

      expect(response, isA<MpdResponseGreeting>());
      expect(
        response.whenOrNull(greeting: (protocolVersion) => protocolVersion),
        equals('0.21.0'),
      );
    });

    test('parses error message', () {
      final response = parseMpdResponse(
        MpdRawMessage(
          lines: ['ACK [50@0] {play} No such song'],
          binary: const [],
        ),
      );

      expect(response, isA<MpdResponseError>());
      expect(
        response.whenOrNull(error: (message) => message),
        equals('[50@0] {play} No such song'),
      );
    });

    test('parses single value with one key value pair', () {
      final response = parseMpdResponse(
        MpdRawMessage(
          lines: ['volume: 100', 'OK'],
          binary: const [],
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, _) => values),
        equals([
          {
            'volume': ['100'],
          },
        ]),
      );
      expect(response.whenOrNull(ok: (_, binary) => binary), isEmpty);
    });

    test('parses single value with multiple key value pairs', () {
      final response = parseMpdResponse(
        MpdRawMessage(
          lines: ['volume: 100', 'repeat: 1', 'OK'],
          binary: const [],
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, _) => values),
        equals([
          {
            'volume': ['100'],
            'repeat': ['1'],
          }
        ]),
      );
      expect(response.whenOrNull(ok: (_, binary) => binary), isEmpty);
    });

    test('parses list of values with one key value pair', () {
      final response = parseMpdResponse(
        MpdRawMessage(
          lines: [
            'file: /home/foo/Music/bar.ogg',
            'file: /home/foo/Music/bar2.ogg',
            'OK',
          ],
          binary: const [],
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, _) => values),
        equals([
          {
            'file': ['/home/foo/Music/bar.ogg'],
          },
          {
            'file': ['/home/foo/Music/bar2.ogg'],
          },
        ]),
      );
      expect(response.whenOrNull(ok: (_, binary) => binary), isEmpty);
    });

    test('parses list of values with multiple key value pairs', () {
      final response = parseMpdResponse(
        MpdRawMessage(
          lines: [
            'file: /home/foo/Music/bar.ogg',
            'Title: bar',
            'Artist: foo',
            'file: /home/foo/Music/bar2.ogg',
            'Title: bar2',
            'Artist: foo2',
            'OK',
          ],
          binary: const [],
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, _) => values),
        equals([
          {
            'file': ['/home/foo/Music/bar.ogg'],
            'Title': ['bar'],
            'Artist': ['foo'],
          },
          {
            'file': ['/home/foo/Music/bar2.ogg'],
            'Title': ['bar2'],
            'Artist': ['foo2'],
          },
        ]),
      );
      expect(response.whenOrNull(ok: (_, binary) => binary), isEmpty);
    });

    test('parses list of values with unique keys', () {
      final response = parseMpdResponse(
        MpdRawMessage(
          lines: [
            'file: /home/foo/Music/bar.ogg',
            'Title: bar',
            'Artist: foo',
            'directory: /home/foo',
            'directory: /home/foo/Music',
            'OK',
          ],
          binary: const [],
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, _) => values),
        equals([
          {
            'file': ['/home/foo/Music/bar.ogg'],
            'Title': ['bar'],
            'Artist': ['foo'],
          },
          {
            'directory': ['/home/foo'],
          },
          {
            'directory': ['/home/foo/Music'],
          },
        ]),
      );
      expect(response.whenOrNull(ok: (_, binary) => binary), isEmpty);
    });

    test('parses list of values with multiple common keys', () {
      final response = parseMpdResponse(
        MpdRawMessage(
          lines: [
            'plugin: mad',
            'suffix: mp3',
            'suffix: mp2',
            'mime_type: audio/mpeg',
            'plugin: vorbis',
            'suffix: ogg',
            'suffix: oga',
            'mime_type: application/ogg',
            'mime_type: audio/ogg',
            'mime_type: audio/vorbis',
            'OK',
          ],
          binary: const [],
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, _) => values),
        equals([
          {
            'plugin': ['mad'],
            'suffix': ['mp3', 'mp2'],
            'mime_type': ['audio/mpeg'],
          },
          {
            'plugin': ['vorbis'],
            'suffix': ['ogg', 'oga'],
            'mime_type': [
              'application/ogg',
              'audio/ogg',
              'audio/vorbis',
            ],
          },
        ]),
      );
      expect(response.whenOrNull(ok: (_, binary) => binary), isEmpty);
    });

    test('parses binary data', () {
      final response = parseMpdResponse(
        MpdRawMessage(
          lines: [
            'binary: 4',
            'OK',
          ],
          binary: const [69, 69, 69, 69],
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, _) => values),
        equals([
          {
            'binary': ['4'],
          }
        ]),
      );
      expect(
        response.whenOrNull(ok: (_, binary) => binary),
        equals(const [69, 69, 69, 69]),
      );
    });

    test('parses currentsong with multiple custom tags', () {
      final response = parseMpdResponse(
        MpdRawMessage(
          lines: [
            'file: NAS/NAS/Baroque/Guitar/Guitar_Concertos_-_DECCA_464_0132/01.Concerto_in_D_major_for_4_guitars_-_1._Allegro-Vivaldi,_Antonio.flac',
            'Last-Modified: 2022-01-23T18:26:15Z',
            'Format: 44100:16:2',
            'Performer: Los Romeros',
            'Performer: Academy of St. Martin-in-the-Fields',
            'Performer: Brown, Iona',
            'Album: Guitar Concertos - DECCA 464 0132',
            'Composer: Vivaldi, Antonio',
            'Artist: Vivaldi, Antonio',
            'Date: 1990',
            'Title: Concerto in D major for 4 guitars - 1. Allegro',
            'Genre: Baroque',
            'Track: 1',
            'Time: 184',
            'duration: 184.106',
            'Pos: 0',
            'Id: 160',
            'OK',
          ],
          binary: const [],
        ),
      );

      expect(response, isA<MpdResponseOk>());
      expect(
        response.whenOrNull(ok: (values, _) => values),
        equals([
          {
            'file': [
              'NAS/NAS/Baroque/Guitar/Guitar_Concertos_-_DECCA_464_0132/01.Concerto_in_D_major_for_4_guitars_-_1._Allegro-Vivaldi,_Antonio.flac',
            ],
            'Last-Modified': ['2022-01-23T18:26:15Z'],
            'Format': ['44100:16:2'],
            'Performer': [
              'Los Romeros',
              'Academy of St. Martin-in-the-Fields',
              'Brown, Iona',
            ],
            'Album': ['Guitar Concertos - DECCA 464 0132'],
            'Composer': ['Vivaldi, Antonio'],
            'Artist': ['Vivaldi, Antonio'],
            'Date': ['1990'],
            'Title': [
              'Concerto in D major for 4 guitars - 1. Allegro',
            ],
            'Genre': ['Baroque'],
            'Track': ['1'],
            'Time': ['184'],
            'duration': ['184.106'],
            'Pos': ['0'],
            'Id': ['160'],
          },
        ]),
      );
      expect(response.whenOrNull(ok: (_, binary) => binary), isEmpty);
    });
  });
}
