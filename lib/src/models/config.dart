// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
class MpdConfig with _$MpdConfig {
  const factory MpdConfig({
    @JsonKey(name: 'music_directory', fromJson: parseString)
        String? musicDirectory,
    @JsonKey(name: 'playlist_directory', fromJson: parseString)
        String? playlistDirectory,
    @JsonKey(fromJson: parseBool) bool? pcre,
  }) = _MpdConfig;

  factory MpdConfig.fromJson(Map<String, dynamic> json) =>
      _$MpdConfigFromJson(json);
}
