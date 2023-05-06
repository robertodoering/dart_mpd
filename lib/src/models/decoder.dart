import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'decoder.freezed.dart';

@freezed
class MpdDecoder with _$MpdDecoder {
  const factory MpdDecoder({
    String? plugin,
    required List<String> suffix,
    required List<String> mimeType,
  }) = _MpdDecoder;

  factory MpdDecoder.fromValue(Map<String, MpdValue> json) {
    return MpdDecoder(
      plugin: parseString(json['plugin']),
      suffix: json['suffix']?.asList() ?? const [],
      mimeType: json['mime_type']?.asList() ?? const [],
    );
  }
}
