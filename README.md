# dart_mpd

[![pub](https://img.shields.io/pub/v/dart_mpd)](https://pub.dev/packages/dart_mpd)

dart_mpd is a dart package which implements the [Music Player Daemon](https://www.musicpd.org/) protocol.

Supports Linux, macOS and Windows.

## Example

```dart
final client = MpdClient(
  // resolves connection details from environment variables and defaults
  connectionDetails: MpdConnectionDetails.resolve(),
);

// a request will automatically connect to the socket if not already connected
final song = await client.currentsong();

// responses are parsed into models
print(song?.file); // -> String
print(song?.duration); // -> Duration
print(song?.artist); // -> List<String>
print(song?.title); // -> List<String>

// you can hook into the connection lifecycle through callbacks on the client
final client = MpdClient(
  connectionDetails: MpdConnectionDetails.resolve(),
  onConnect: () => print('connected'),
  onSend: (event) => print('sent: $event'),
  onData: (data) => print('received: $data'),
  onResponse: (response) => print('response: $response'),
  onDone: () => print('closed'),
  onError: (e, st) => print('error: $e'),
);
```

## Requests

To handle concurrent request, each request gets queued, so you can use use one client to make simultanious requests.

Keep in mind that using `idle` will block the socket until an `idle` response has been received.

## Connection details

`MpdConnectionDetails.resolve` will resolve the connection details from
environment variables and fallback to the default values as described in
https://mpd.readthedocs.io/en/stable/client.html#connecting-to-mpd.

You can also manually set the host and port using the default constructor.

## Error handling

A request can throw the following errors:
- `MpdResponseError` if the server returns with an error
- `SocketException` if the host-lookup or connection fails
- `MpdUnexpectedResponse` if an unexpected response is received
- `MpdClientException` and any other error that may be thrown when trying to parse the response
  (this indicates a bug in the library and should be reported)

```dart
try {
  await client.setval(200);
} catch (e) {
  print(e);
}
```

## Commands

This package provides interfaces for all commands in MPD's stable release and parses their response into data models.

Each method on the `MpdClient` resembles the name of the command. A reference can be found here: https://mpd.readthedocs.io/en/stable/protocol.html#command-reference.

If a command has not yet been added to the `MpdClient`, a request can be made manually using `MpdClient.connection.send`. Example:

```dart
final response = await client.connection.send('currentsong');
final values = switch (response) {
  MpdResponseOk(:final values) => values,
  _ => null,
};
// values is a list of the received key-value pairs (or null on error)
```

If a command is in the stable release and has not been added to dart_mpd, please file an [issue](https://github.com/robertodoering/twitter_api/issues).
