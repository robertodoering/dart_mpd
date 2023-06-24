import 'dart:convert';

import 'package:dart_mpd/src/parser/message_handler.dart';
import 'package:test/test.dart';

void main() {
  group('$MessageHandler', () {
    test('handles a complete message', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(_full1));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(messages.single.lines.length, equals(21));
    });

    test('handles a single partial message', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(_partial1_1));
      handler.onData(utf8.encode(_partial1_2));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(messages.single.lines.length, equals(21));
    });

    test('handles two concatenated message', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode("$_full1$_full2"));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(2));
      expect(messages[0].lines.length, equals(21));
      expect(messages[1].lines.length, equals(11));
    });

    test('handles multiple partial messages', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(_partial1_1));
      handler.onData(utf8.encode('$_partial1_2$_full2'));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(2));
      expect(messages[0].lines.length, equals(21));
      expect(messages[1].lines.length, equals(11));
    });

    test('handles message with partial end sequence', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(_partial2_1));
      handler.onData(utf8.encode(_partial2_2));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(messages[0].lines.length, equals(11));
    });

    test('handles greeting', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode('OK MPD 0.21.0\n'));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(messages.single.lines.single, equals('OK MPD 0.21.0'));
    });

    test('handles error message', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode('ACK [50@0] {play} No such song\n'));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(
        messages.single.lines.single,
        equals('ACK [50@0] {play} No such song'),
      );
    });

    test('handles full message with binary', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(_full3));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(messages.single.lines.length, equals(4));
      expect(messages.single.binary, isNotEmpty);
    });

    test('handles partial message with binary', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(_partial3_1));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages, isEmpty);
    });

    test('handles partially received message with binary', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode(_partial3_1));
      handler.onData(utf8.encode(_partial3_2));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(1));
      expect(messages.single.lines.length, equals(4));
      expect(messages.single.binary.length, equals(8));
    });

    test(
        'handles multiple messages with multiple '
        'partially received binary', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode('$_full1$_partial3_1'));
      handler.onData(utf8.encode('$_partial3_2$_partial3_1'));
      handler.onData(utf8.encode(_partial3_2));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(3));
      expect(messages[0].lines.length, equals(21));
      expect(messages[0].binary, isEmpty);
      expect(messages[1].lines.length, equals(4));
      expect(messages[1].binary.length, equals(8));
      expect(messages[2].lines.length, equals(4));
      expect(messages[2].binary.length, equals(8));
    });

    test('handles multiple messages with partially received binary', () async {
      final handler = MessageHandler();

      handler.onData(utf8.encode('$_full1$_partial3_1'));
      handler.onData(utf8.encode(_partial3_2));
      handler.onData(utf8.encode(_full2));
      handler.close().ignore();
      final messages = await handler.messageStream.toList();

      expect(messages.length, equals(3));
      expect(messages[0].lines.length, equals(21));
      expect(messages[0].binary, isEmpty);
      expect(messages[1].lines.length, equals(4));
      expect(messages[1].binary.length, equals(8));
      expect(messages[2].lines.length, equals(11));
      expect(messages[2].binary, isEmpty);
    });
  });
}

final _full1 = '''file: foo/bar.opus
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

final _full2 = '''file: foo/bar.mp3
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

final _partial1_1 = '''file: foo/bar.opus
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

final _partial1_2 = '''ar2.opus
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

final _partial2_1 = '''file: foo/bar.mp3
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

final _partial2_2 = '''K
''';

final _full3 = '''size: 69
type: image/jpeg
binary: 8
aaaaaaaa
OK
''';

final _partial3_1 = '''size: 69
type: image/jpeg
binary: 8
aaaaa''';

final _partial3_2 = '''aaa
OK
''';
