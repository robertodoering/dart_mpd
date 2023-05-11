// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'output.freezed.dart';
part 'output.g.dart';

@freezed
class MpdOutput with _$MpdOutput {
  const factory MpdOutput({
    @JsonKey(fromJson: parseInt) int? outputId,
    @JsonKey(fromJson: parseString) String? outputname,
    @JsonKey(fromJson: parseBool) bool? outputenabled,
    @JsonKey(fromJson: parseString) String? plugin,

    /// Any other arbitrary values that are not explicitly parsed.
    @JsonKey(includeFromJson: false) @Default({}) Map<String, MpdValue> values,
  }) = _MpdOutput;

  factory MpdOutput.fromJson(Map<String, dynamic> json) =>
      _$MpdOutputFromJson(json);

  factory MpdOutput.fromValue(Map<String, MpdValue> value) {
    return MpdOutput.fromJson(value).copyWith(
      values: {...value}..removeWhere(
          (key, _) => [
            'outputid',
            'outputname',
            'outputenabled',
            'plugin',
          ].contains(key),
        ),
    );
  }
}
