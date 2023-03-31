# dart_mpd

dart_mpd is a dart package which implements the [Music Player Daemon](https://www.musicpd.org/) protocol.


## Example

```dart
final client = MpdClient(
  connectionDetails: MpdConnectionDetails.resolve(),
);

// a request will automatically connect to the socket if not already connected
final song = await client.currentsong();

// responses are parsed into data models
print(song.artist);
print(song.title);

// you can also manually connect and close the socket
await client.connection.connect();
await client.connection.close();

// you can hook into the connection lifecycle through callbacks on the client
MpdClient(
  connectionDetails: MpdConnectionDetails.resolve(),
  onConnect: () => print('connected'),
  onDone: () => print('closed'),
);
```

### Requests

To handle concurrent request, each request gets queued. That means you can use use one client to make simultanious requests.

Keep in mind that using `idle` will block the socket until an `idle` response has been received.

### Connection details

`MpdConnectionDetails.resolve` will resolve the connection details from
environment variables and fallback to the default values as described in
https://mpd.readthedocs.io/en/stable/client.html#connecting-to-mpd


### Error handling

A request can throw the following errors:
- `SocketException` if the host-lookup or connection fails
- `MpdClientException` if an unexpected response is received
- `MpdResponseError` if the server returns with an error
- any other error that may be thrown when trying to parse the response
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
final values = response.mapOrNull(
  ok: (responseOk) => responseOk.values,
  error: (responseError) => print(responseError.message),
);
// values is a list of the received key-value pairs
```

If a command is in the stable release and has not been added to dart_mpd, please file an [issue](https://github.com/robertodoering/twitter_api/issues).