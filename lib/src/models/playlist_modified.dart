// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_modified.freezed.dart';
part 'playlist_modified.g.dart';

@freezed
class PlaylistModified with _$PlaylistModified {
  const factory PlaylistModified({
    @JsonKey(fromJson: parseStringSafe) required String playlist,
    @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
    DateTime? lastModified,
  }) = _PlaylistModified;

  factory PlaylistModified.fromJson(Map<String, dynamic> json) =>
      _$PlaylistModifiedFromJson(json);
}
