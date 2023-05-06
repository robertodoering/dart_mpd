import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';

@freezed
class MpdResponse with _$MpdResponse {
  const factory MpdResponse.ok({
    required List<Map<String, MpdValue>> values,
    required List<int>? binary,
  }) = MpdResponseOk;

  const factory MpdResponse.error({
    required String message,
  }) = MpdResponseError;

  const factory MpdResponse.greeting({
    required String protocolVersion,
  }) = MpdResponseGreeting;
}

@freezed
class MpdValue with _$MpdValue {
  MpdValue._();

  factory MpdValue.single(String value) = MpdValueSingle;

  factory MpdValue.multiple(List<String> values) = MpdValueMultiple;

  List<String> asList() => when(
        single: (value) => [value],
        multiple: (values) => values,
      );

  String asSingle() => when(
        single: (value) => value,
        multiple: (values) => throw Exception(
          'Cannot convert multiple values to single value',
        ),
      );
}
