import 'package:dart_mpd/dart_mpd.dart';

Future<void> main() async {
  final client = MpdClient(
    connectionDetails: MpdConnectionDetails.resolve(),
  );

  // a request will automatically connect to the socket if not already connected
  final song = await client.currentsong();

  // responses are parsed into models
  print(song?.file); // -> String
  print(song?.duration); // -> Duration
  print(song?.artist); // -> List<String>
  print(song?.title); // -> List<String>

  // you can also manually connect and close the socket
  await client.connection.connect();
  await client.connection.close();

  // you can hook into the connection lifecycle through callbacks on the client
  MpdClient(
    connectionDetails: MpdConnectionDetails.resolve(),
    onConnect: () => print('connected'),
    onSend: (event) => print('sent: $event'),
    onData: (data) => print('received: $data'),
    onResponse: (response) => print('response: $response'),
    onDone: () => print('closed'),
    onError: (e, st) => print('error: $e'),
  );

  // `MpdConnectionDetails.resolve` will resolve the connection details from
  // environment variables and fallback to the default values as described in
  // https://mpd.readthedocs.io/en/stable/client.html#connecting-to-mpd
  MpdConnectionDetails.resolve();

  // you can also manually specify the connection details
  MpdConnectionDetails(
    host: 'localhost',
    port: 6600,
    timeout: const Duration(seconds: 30),
  );

  // a request can throw the following errors:
  // - `SocketException` if the host-lookup or connection fails
  // - `MpdClientException` if an unexpected response is received
  // - `MpdResponseError` if the server returns an error response
  // - any other error that may be thrown when trying to parse the response
  //   (this indicates a bug in the library and should be reported)

  try {
    await client.setvol(200);
  } catch (e) {
    print(e);
  }
}
