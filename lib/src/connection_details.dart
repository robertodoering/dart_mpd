import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platform/platform.dart';

class MpdConnectionDetails {
  /// Manually set the client's connection details.
  ///
  /// Prefer to use [MpdConnectionDetails.resolve].
  const MpdConnectionDetails({
    required this.host,
    required this.port,
    required this.timeout,
  });

  /// Resolves the connection details from environment variables.
  ///
  /// See https://mpd.readthedocs.io/en/stable/client.html.
  factory MpdConnectionDetails.resolve() {
    final mpdHost = platform.environment['MPD_HOST'];

    final mpdPort = platform.environment['MPD_PORT'] != null
        ? int.tryParse(platform.environment['MPD_PORT']!)
        : null;

    final mpdTimeout = platform.environment['MPD_TIMEOUT'] != null
        ? int.tryParse(platform.environment['MPD_TIMEOUT']!)
        : null;

    final xdgRuntimeDir = platform.environment['XDG_RUNTIME_DIR'];

    final String host;
    int? port;

    if (mpdHost != null) {
      host = mpdHost;
    } else if (xdgRuntimeDir != null &&
        fileSystem.file('$xdgRuntimeDir/mpd/socket').existsSync()) {
      host = '$xdgRuntimeDir/mpd/socket';
      port = 0;
    } else {
      if (fileSystem.file('/run/mpd/socket').existsSync()) {
        host = '/run/mpd/socket';
        port = 0;
      } else {
        host = 'localhost';
      }
    }

    port ??= mpdPort ?? 6600;

    final timeout = mpdTimeout != null
        ? Duration(seconds: mpdTimeout)
        : const Duration(seconds: 30);

    return MpdConnectionDetails(
      host: host,
      port: port,
      timeout: timeout,
    );
  }

  final String host;
  final int port;
  final Duration timeout;

  /// Platform interface used to read environment variables from.
  @visibleForTesting
  static Platform platform = LocalPlatform();

  /// File system interface used to read files from.
  ///
  /// Used to check if the socket file exists.
  @visibleForTesting
  static FileSystem fileSystem = LocalFileSystem();
}
