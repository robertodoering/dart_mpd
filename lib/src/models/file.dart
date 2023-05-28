import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.freezed.dart';

enum MpdFileType { file, directory }

@freezed
class MpdFile with _$MpdFile {
  const factory MpdFile.file({
    required String file,
    MpdSong? song,
    DateTime? lastModified,
    int? size,
  }) = MpdFileFile;

  const factory MpdFile.directory({
    required String directory,
    DateTime? lastModified,
    int? size,
  }) = MpdFileDirectory;

  static MpdFile? fromValue(Map<String, List<String>> value) {
    if (value['file'] != null) {
      return MpdFile.file(
        file: parseStringSafe(value['file']),
        song: value.length > 3 ? MpdSong.fromJson(value) : null,
        lastModified: parseDateTime(value['Last-Modified']),
        size: parseInt(value['size']),
      );
    }

    if (value['directory'] != null) {
      return MpdFile.directory(
        directory: parseStringSafe(value['directory']),
        lastModified: parseDateTime(value['Last-Modified']),
        size: parseInt(value['size']),
      );
    }

    return null;
  }
}
