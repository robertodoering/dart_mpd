import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';

@freezed
class MpdResponse with _$MpdResponse {
  const factory MpdResponse.ok({
    required List<Map<String, String>> values,
    required List<int>? binary,
  }) = MpdResponseOk;

  const factory MpdResponse.error({
    required String message,
  }) = MpdResponseError;

  const factory MpdResponse.greeting({
    required String protocolVersion,
  }) = MpdResponseGreeting;
}
