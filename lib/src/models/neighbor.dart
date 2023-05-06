// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'neighbor.freezed.dart';
part 'neighbor.g.dart';

@freezed
class MpdNeighbor with _$MpdNeighbor {
  const factory MpdNeighbor({
    @JsonKey(fromJson: parseString) String? neighbor,
    @JsonKey(fromJson: parseString) String? name,
  }) = _MpdNeighbor;

  factory MpdNeighbor.fromJson(Map<String, dynamic> json) =>
      _$MpdNeighborFromJson(json);
}
