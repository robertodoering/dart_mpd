import 'package:freezed_annotation/freezed_annotation.dart';

part 'neighbor.freezed.dart';
part 'neighbor.g.dart';

@freezed
class MpdNeighbor with _$MpdNeighbor {
  const factory MpdNeighbor({
    String? neighbor,
    String? name,
  }) = _MpdNeighbor;

  factory MpdNeighbor.fromJson(Map<String, dynamic> json) =>
      _$MpdNeighborFromJson(json);
}
