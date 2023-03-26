import 'package:freezed_annotation/freezed_annotation.dart';

part 'decoder.freezed.dart';

@freezed
class MpdDecoder with _$MpdDecoder {
  const factory MpdDecoder({
    String? plugin,
    required List<String> suffix,
    required List<String> mimeType,
  }) = _MpdDecoder;

  factory MpdDecoder.fromValue(Map<String, dynamic> json) {
    final suffixString = json['suffix'] as String?;
    final mimeTypeString = json['mime_type'] as String?;

    return MpdDecoder(
      plugin: json['plugin'] as String?,
      suffix: suffixString?.split(',') ?? [],
      mimeType: mimeTypeString?.split(',') ?? [],
    );
  }
}
