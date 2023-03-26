// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
class MpdStats with _$MpdStats {
  const factory MpdStats({
    @JsonKey(fromJson: parseInt) int? artists,
    @JsonKey(fromJson: parseInt) int? albums,
    @JsonKey(fromJson: parseInt) int? songs,
    @JsonKey(fromJson: parseSeconds) Duration? uptime,
    @JsonKey(name: 'db_playtime', fromJson: parseSeconds) Duration? dbPlaytime,
    @JsonKey(name: 'db_update', fromJson: parseTimestamp) DateTime? dbUpdate,
    @JsonKey(fromJson: parseSeconds) Duration? playtime,
  }) = _MpdStats;

  factory MpdStats.fromJson(Map<String, dynamic> json) =>
      _$MpdStatsFromJson(json);
}
