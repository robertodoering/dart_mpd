import 'package:dart_mpd/dart_mpd.dart';

class MpdClientException implements Exception {
  const MpdClientException(this.message);

  final String message;
}

class MpdUnexpectedResponse implements Exception {
  const MpdUnexpectedResponse(this.response);

  final MpdResponse response;
}
