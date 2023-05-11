// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class MpdSong with _$MpdSong {
  const factory MpdSong({
    @JsonKey(fromJson: parseStringOrEmpty)
        required String file,
    @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
        DateTime? lastModified,
    @JsonKey(name: 'Format', fromJson: parseString)
        String? format,
    @JsonKey(name: 'Time', fromJson: parseInt)
        int? time,
    @JsonKey(fromJson: parseDuration)
        Duration? duration,
    @JsonKey(name: 'Pos', fromJson: parseInt)
        int? pos,
    @JsonKey(name: 'Id', fromJson: parseInt)
        int? id,

    /// Tags as defined in
    /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
    @JsonKey(includeFromJson: false)
    @Default({})
        Map<String, MpdValue> tags,
  }) = _MpdSong;

  factory MpdSong.fromJson(Map<String, dynamic> json) =>
      _$MpdSongFromJson(json);

  factory MpdSong.fromValue(Map<String, MpdValue> value) {
    return MpdSong.fromJson(value).copyWith(
      tags: {...value}..removeWhere(
          (key, _) => [
            'file',
            'Last-Modified',
            'Format',
            'Time',
            'duration',
            'Pos',
            'Id',
          ].contains(key),
        ),
    );
  }
}
