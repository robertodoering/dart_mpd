import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/client/client_utils.dart';
import 'package:test/test.dart';

void main() {
  group('$buildClientCmd', () {
    test('returns the cmd when no args have been provided', () {
      final cmd = buildClientCmd('status', []);

      expect(cmd, 'status');
    });

    test('returns the cmd when provided args are `null`', () {
      final cmd = buildClientCmd('shuffle', [null]);

      expect(cmd, 'shuffle');
    });

    test('wraps args in quotation marks', () {
      final cmd = buildClientCmd('cmd', ['arg1', 'arg two']);

      expect(cmd, 'cmd "arg1" "arg two"');
    });

    test('formats `bool` args', () {
      final cmd = buildClientCmd('cmd', [true, false]);

      expect(cmd, 'cmd "1" "0"');
    });

    test('formats `MpdSingle` args by using its `toValue` value', () {
      final args = [MpdSingle.enabled, MpdSingle.disabled, MpdSingle.oneshot];
      final cmd = buildClientCmd('cmd', args);

      expect(
        args.length,
        MpdSingle.values.length,
        reason: 'not all values of `MpdSingle` are tested',
      );

      expect(cmd, 'cmd "1" "0" "oneshot"');
    });

    test('formats `Enum` args by using their `name`', () {
      final cmd = buildClientCmd(
        'cmd',
        [ReplayGainMode.auto, MpdSubsystem.database],
      );

      expect(cmd, 'cmd "auto" "database"');
    });

    test('escapes args', () {
      final cmd = buildClientCmd(
        'find',
        // finding an artist named foo'bar"
        [r'''(Artist == "foo\'bar\"")'''],
      );

      expect(cmd, r'''find "(Artist == \"foo\\'bar\\\"\")"''');
    });
  });
}
