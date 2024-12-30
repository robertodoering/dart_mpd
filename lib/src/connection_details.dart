import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platform/platform.dart';

class MpdConnectionDetails {
  /// Manually set the client's connection details.
  ///
  /// When the [port] is set to `0`, the [host] is treated as a unix domain
  /// socket.
  ///
  /// When using defaults, consider using [resolve] instead.
  const MpdConnectionDetails({
    required this.host,
    required this.port,
    this.timeout = defaultTimeout,
  });

  /// Resolves the connection details from environment variables and defaults.
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
        host = defaultSocket;
        port = 0;
      } else {
        host = defaultHost;
      }
    }

    port ??= mpdPort ?? defaultPort;

    final timeout =
        mpdTimeout != null ? Duration(seconds: mpdTimeout) : defaultTimeout;

    return MpdConnectionDetails(
      host: host,
      port: port,
      timeout: timeout,
    );
  }

  final String host;
  final int port;
  final Duration timeout;

  static const defaultSocket = '/run/mpd/socket';
  static const defaultHost = 'localhost';
  static const defaultPort = 6600;
  static const defaultTimeout = Duration(seconds: 30);

  /// Platform interface used to read environment variables from.
  @visibleForTesting
  static Platform platform = LocalPlatform();

  /// File system interface used to read files from.
  ///
  /// Used to check if the unix socket file exists.
  @visibleForTesting
  static FileSystem fileSystem = LocalFileSystem();
}
