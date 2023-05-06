// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_change.freezed.dart';
part 'position_change.g.dart';

@freezed
class MpdPositionChange with _$MpdPositionChange {
  const factory MpdPositionChange({
    @JsonKey(name: 'Id', fromJson: parseInt) int? id,
    @JsonKey(fromJson: parseInt) int? cpos,
  }) = _MpdPositionChange;

  factory MpdPositionChange.fromJson(Map<String, dynamic> json) =>
      _$MpdPositionChangeFromJson(json);
}
