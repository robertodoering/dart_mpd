// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class MpdMessage with _$MpdMessage {
  const factory MpdMessage({
    @JsonKey(fromJson: parseStringOrEmpty) required String channel,
    @JsonKey(fromJson: parseStringOrEmpty) required String message,
  }) = _MpdMessage;

  factory MpdMessage.fromJson(Map<String, dynamic> json) =>
      _$MpdMessageFromJson(json);
}
