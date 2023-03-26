import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'count.freezed.dart';

@freezed
class MpdCount with _$MpdCount {
  const factory MpdCount({
    String? group,
    int? songs,
    int? playtime,
  }) = _MpdCount;

  factory MpdCount.fromValue(Map<String, String> value) {
    String? group;

    final filtered = {...value}
      ..remove('songs')
      ..remove('playtime');

    if (filtered.length == 1) group = filtered.values.single;

    return MpdCount(
      group: group,
      songs: parseInt(value['songs']),
      playtime: parseInt(value['playtime']),
    );
  }
}
