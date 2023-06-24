// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

@freezed
class MpdImage with _$MpdImage {
  const factory MpdImage({
    int? size,
    String? type,
    int? binary,
    required List<int> bytes,
  }) = _MpdImage;

  factory MpdImage.fromResponse(MpdResponseOk response) {
    return MpdImage(
      size: parseInt(response.values.single['size']),
      type: parseString(response.values.single['type']),
      binary: parseInt(response.values.single['binary']),
      bytes: response.binary,
    );
  }
}
