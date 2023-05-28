// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mount.freezed.dart';
part 'mount.g.dart';

@freezed
class MpdMount with _$MpdMount {
  const factory MpdMount({
    @JsonKey(fromJson: parseString) String? mount,
    @JsonKey(fromJson: parseString) String? storage,
  }) = _MpdMount;

  factory MpdMount.fromJson(Map<String, dynamic> json) =>
      _$MpdMountFromJson(json);
}
