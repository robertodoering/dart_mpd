import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sticker_find.freezed.dart';

@freezed
class MpdStickerFind with _$MpdStickerFind {
  const factory MpdStickerFind({
    required String file,
    required MapEntry<String, String> sticker,
  }) = _MpdStickerFind;

  static MpdStickerFind? fromValue(Map<String, String> value) {
    final file = value['file'];
    if (file == null) return null;

    final sticker = parseSticker(value);
    if (sticker == null) return null;

    return MpdStickerFind(file: file, sticker: sticker);
  }
}
