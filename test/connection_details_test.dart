import 'package:dart_mpd/dart_mpd.dart';
import 'package:file/memory.dart';
import 'package:platform/platform.dart';
import 'package:test/test.dart';

void main() {
  group('$MpdConnectionDetails', () {
    setUp(() {
      // reset the platform and file system to default values for each test
      MpdConnectionDetails.platform = FakePlatform();
      MpdConnectionDetails.fileSystem = MemoryFileSystem();
    });

    test('resolves details if MPD_HOST and MPD_PORT is set', () {
      MpdConnectionDetails.platform = FakePlatform(
        environment: {
          'MPD_HOST': 'foobar',
          'MPD_PORT': '6969',
          'XDG_RUNTIME_DIR': '/run/user/1000',
        },
      );

      final details = MpdConnectionDetails.resolve();
      expect(details.host, equals('foobar'));
      expect(details.port, equals(6969));
    });

    test('resolves timeout if MPD_TIMEOUT is set', () {
      MpdConnectionDetails.platform = FakePlatform(
        environment: {
          'MPD_TIMEOUT': '60',
        },
      );

      final details = MpdConnectionDetails.resolve();
      expect(details.timeout, equals(const Duration(seconds: 60)));
    });

    test(
        'resolves host to XDG_RUNTIME_DIR socket path if '
        'socket file exists', () {
      MpdConnectionDetails.platform = FakePlatform(environment: {
        'XDG_RUNTIME_DIR': '/run/user/1000',
      });
      MpdConnectionDetails.fileSystem = MemoryFileSystem()
        ..file('/run/user/1000/mpd/socket').createSync(recursive: true);

      final details = MpdConnectionDetails.resolve();
      expect(details.host, equals('/run/user/1000/mpd/socket'));
    });

    test(
        'resolves host to default if XDG_RUNTIME_DIR is set but '
        'socket file doesn\'t exists', () {
      MpdConnectionDetails.platform = FakePlatform(environment: {
        'XDG_RUNTIME_DIR': '/run/user/1000',
      });

      final details = MpdConnectionDetails.resolve();
      expect(details.host, equals('localhost'));
    });

    test('resolves host to default socket path if it exists', () {
      MpdConnectionDetails.platform = FakePlatform(environment: {});
      MpdConnectionDetails.fileSystem = MemoryFileSystem()
        ..file('/run/mpd/socket').createSync(recursive: true);

      final details = MpdConnectionDetails.resolve();
      expect(details.host, equals('/run/mpd/socket'));
    });

    test(
        'resolves default values if no environment variables are set and '
        'socket file doesn\'t exist', () {
      MpdConnectionDetails.platform = FakePlatform(environment: {});

      final details = MpdConnectionDetails.resolve();
      expect(details.host, equals('localhost'));
      expect(details.port, equals(6600));
      expect(details.timeout, equals(const Duration(seconds: 30)));
    });
  });
}
