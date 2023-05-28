// ignore_for_file: invalid_annotation_target

import 'package:dart_mpd/src/parser/value_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class MpdSong with _$MpdSong {
  const factory MpdSong({
    @JsonKey(fromJson: parseStringSafe) required String file,
    @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
    DateTime? lastModified,
    @JsonKey(name: 'Format', fromJson: parseString) String? format,
    @JsonKey(name: 'Time', fromJson: parseInt) int? time,
    @JsonKey(fromJson: parseDuration) Duration? duration,
    @JsonKey(name: 'Pos', fromJson: parseInt) int? pos,
    @JsonKey(name: 'Id', fromJson: parseInt) int? id,

    /// Tags as defined in:
    /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
    /// Named as they are returned by mpd:
    /// https://github.com/MusicPlayerDaemon/MPD/blob/45f81cde6ddf8dd8e80d9396566900d6e6e5e4d9/src/tag/Names.cxx.
    @JsonKey(name: 'Artist') List<String>? artist,
    @JsonKey(name: 'ArtistSort') List<String>? artistSort,
    @JsonKey(name: 'Album') List<String>? album,
    @JsonKey(name: 'AlbumSort') List<String>? albumSort,
    @JsonKey(name: 'AlbumArtist') List<String>? albumArtist,
    @JsonKey(name: 'AlbumArtistSort') List<String>? albumArtistSort,
    @JsonKey(name: 'Title') List<String>? title,
    @JsonKey(name: 'TitleSort') List<String>? titleSort,
    @JsonKey(name: 'Name') List<String>? name,
    @JsonKey(name: 'Genre') List<String>? genre,
    @JsonKey(name: 'Mood') List<String>? mood,
    @JsonKey(name: 'Date') List<String>? date,
    @JsonKey(name: 'OriginalDate') List<String>? originalDate,
    @JsonKey(name: 'Composer') List<String>? composer,
    @JsonKey(name: 'ComposerSort') List<String>? composerSort,
    @JsonKey(name: 'Performer') List<String>? performer,
    @JsonKey(name: 'Conductor') List<String>? conductor,
    @JsonKey(name: 'Work') List<String>? work,
    @JsonKey(name: 'Ensemble') List<String>? ensemble,
    @JsonKey(name: 'Movement') List<String>? movement,
    @JsonKey(name: 'MovementNumber') List<String>? movementNumber,
    @JsonKey(name: 'Location') List<String>? location,
    @JsonKey(name: 'Grouping') List<String>? grouping,
    @JsonKey(name: 'Comment') List<String>? comment,
    @JsonKey(name: 'Disc') List<String>? disc,
    @JsonKey(name: 'Label') List<String>? label,
    @JsonKey(name: 'MUSICBRAINZ_ARTISTID') List<String>? musicbrainzArtistid,
    @JsonKey(name: 'MUSICBRAINZ_ALBUMID') List<String>? musicbrainzAlbumid,
    @JsonKey(name: 'MUSICBRAINZ_ALBUMARTISTID')
    List<String>? musicbrainzAlbumartistid,
    @JsonKey(name: 'MUSICBRAINZ_TRACKID') List<String>? musicbrainzTrackid,
    @JsonKey(name: 'MUSICBRAINZ_RELEASETRACKID')
    List<String>? musicbrainzReleasetrackid,
    @JsonKey(name: 'MUSICBRAINZ_WORKID') List<String>? musicbrainzWorkid,
  }) = _MpdSong;

  factory MpdSong.fromJson(Map<String, dynamic> json) =>
      _$MpdSongFromJson(json);
}
