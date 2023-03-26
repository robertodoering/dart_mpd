// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class MpdStatus with _$MpdStatus {
  const factory MpdStatus({
    String? partition,
    @JsonKey(fromJson: parseInt) int? volume,
    @JsonKey(fromJson: parseBool) bool? repeat,
    @JsonKey(fromJson: parseBool) bool? random,
    @JsonKey(fromJson: MpdSingle.parse) MpdSingle? single,
    @JsonKey(fromJson: parseBool) bool? consume,
    @JsonKey(fromJson: parseInt) int? playlist,
    @JsonKey(fromJson: parseInt) int? playlistlength,
    MpdState? state,
    @JsonKey(fromJson: parseInt) int? song,
    @JsonKey(fromJson: parseInt) int? songid,
    @JsonKey(fromJson: parseInt) int? nextsong,
    @JsonKey(fromJson: parseInt) int? nextsongid,
    @JsonKey(fromJson: parseDouble) double? elapsed,
    @JsonKey(fromJson: parseDouble) double? duration,
    @JsonKey(fromJson: parseInt) int? bitrate,
    @JsonKey(fromJson: parseInt) int? crossfade,
    @JsonKey(fromJson: parseDouble) double? mixramp,
    @JsonKey(fromJson: parseDouble) double? mixrampdelay,
    String? audio,
    @JsonKey(fromJson: parseInt) int? updatingDb,
    String? error,
  }) = _MpdStatus;

  factory MpdStatus.fromJson(Map<String, dynamic> json) =>
      _$MpdStatusFromJson(json);
}
