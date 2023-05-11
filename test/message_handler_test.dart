import 'dart:convert';

import 'package:dart_mpd/src/message_handler.dart';
import 'package:test/test.dart';

void main() {
  group('$MessageHandler', () {
    test('handles a complete message', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(full1));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(messages.single, equals(utf8.encode(full1)));
    });

    test('handles a single partial message', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(partial1_1));
      handler.onData(utf8.encode(partial1_2));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(
        messages.single,
        equals(utf8.encode(partial1_1).followedBy(utf8.encode(partial1_2))),
      );
    });

    test('handles two concatenated message', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode("$full1$full2"));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(2));
      expect(messages[0], equals(utf8.encode(full1)));
      expect(messages[1], equals(utf8.encode(full2)));
    });

    test('handles multiple partial messages', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(partial1_1));
      handler.onData(utf8.encode('$partial1_2$full2'));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(2));
      expect(
        messages[0],
        equals(utf8.encode(partial1_1).followedBy(utf8.encode(partial1_2))),
      );
      expect(messages[1], equals(utf8.encode(full2)));
    });

    test('handles message with partial end sequence', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(partial2_1));
      handler.onData(utf8.encode(partial2_2));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(
        messages[0],
        equals(utf8.encode(partial2_1).followedBy(utf8.encode(partial2_2))),
      );
    });

    test('handles greeting', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode('OK MPD 0.21.0\n'));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(messages.single, equals(utf8.encode('OK MPD 0.21.0\n')));
    });

    test('handles error message', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode('ACK [50@0] {play} No such song\n'));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(
        messages.single,
        equals(utf8.encode('ACK [50@0] {play} No such song\n')),
      );
    });
  });
}

final full1 = '''file: foo/bar.opus
Last-Modified: 2019-10-04T00:34:40Z
Format: 48000:16:2
Artist: artist
Genre: genre
Title: title
Time: 220
duration: 220.295
Pos: 5
Id: 6
file: foo2/bar2.opus
Last-Modified: 2016-09-10T12:59:50Z
Format: 48000:16:2
Artist: artist2
Genre: genre
Title: title
Time: 387
duration: 386.906
Pos: 6
Id: 7
OK
''';

final full2 = '''file: foo/bar.mp3
Last-Modified: 2018-06-24T18:07:27Z
Format: 48000:f:2
Artist: artist
Title: title
Genre: genre
Time: 263
duration: 263.064
Pos: 387
Id: 385
OK
''';

final partial1_1 = '''file: foo/bar.opus
Last-Modified: 2019-10-04T00:34:40Z
Format: 48000:16:2
Artist: artist
Genre: genre
Title: title
Time: 220
duration: 220.295
Pos: 5
Id: 6
file: foo2/b''';

final partial1_2 = '''ar2.opus
Last-Modified: 2016-09-10T12:59:50Z
Format: 48000:16:2
Artist: artist2
Genre: genre
Title: title
Time: 387
duration: 386.906
Pos: 6
Id: 7
OK
''';

final partial2_1 = '''file: foo/bar.mp3
Last-Modified: 2018-06-24T18:07:27Z
Format: 48000:f:2
Artist: artist
Title: title
Genre: genre
Time: 263
duration: 263.064
Pos: 387
Id: 385
O''';

final partial2_2 = '''K
''';
