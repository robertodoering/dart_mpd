import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class MpdMessage with _$MpdMessage {
  const factory MpdMessage({
    required String channel,
    required String message,
  }) = _MpdMessage;

  factory MpdMessage.fromJson(Map<String, dynamic> json) =>
      _$MpdMessageFromJson(json);
}
