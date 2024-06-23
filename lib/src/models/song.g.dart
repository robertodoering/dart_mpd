// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MpdSongImpl _$$MpdSongImplFromJson(Map<String, dynamic> json) =>
    _$MpdSongImpl(
      file: parseStringSafe(json['file'] as List<String>?),
      lastModified: parseDateTime(json['Last-Modified'] as List<String>?),
      format: parseString(json['Format'] as List<String>?),
      time: parseInt(json['Time'] as List<String>?),
      duration: parseDuration(json['duration'] as List<String>?),
      pos: parseInt(json['Pos'] as List<String>?),
      id: parseInt(json['Id'] as List<String>?),
      artist:
          (json['Artist'] as List<dynamic>?)?.map((e) => e as String).toList(),
      artistSort: (json['ArtistSort'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      album:
          (json['Album'] as List<dynamic>?)?.map((e) => e as String).toList(),
      albumSort: (json['AlbumSort'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      albumArtist: (json['AlbumArtist'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      albumArtistSort: (json['AlbumArtistSort'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      title:
          (json['Title'] as List<dynamic>?)?.map((e) => e as String).toList(),
      titleSort: (json['TitleSort'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      track:
          (json['Track'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: (json['Name'] as List<dynamic>?)?.map((e) => e as String).toList(),
      genre:
          (json['Genre'] as List<dynamic>?)?.map((e) => e as String).toList(),
      mood: (json['Mood'] as List<dynamic>?)?.map((e) => e as String).toList(),
      date: (json['Date'] as List<dynamic>?)?.map((e) => e as String).toList(),
      originalDate: (json['OriginalDate'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      composer: (json['Composer'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      composerSort: (json['ComposerSort'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      performer: (json['Performer'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      conductor: (json['Conductor'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      work: (json['Work'] as List<dynamic>?)?.map((e) => e as String).toList(),
      movement: (json['Movement'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      movementNumber: (json['MovementNumber'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ensemble: (json['Ensemble'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      location: (json['Location'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      grouping: (json['Grouping'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      comment:
          (json['Comment'] as List<dynamic>?)?.map((e) => e as String).toList(),
      disc: (json['Disc'] as List<dynamic>?)?.map((e) => e as String).toList(),
      label:
          (json['Label'] as List<dynamic>?)?.map((e) => e as String).toList(),
      musicbrainzArtistid: (json['MUSICBRAINZ_ARTISTID'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      musicbrainzAlbumid: (json['MUSICBRAINZ_ALBUMID'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      musicbrainzAlbumartistid:
          (json['MUSICBRAINZ_ALBUMARTISTID'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      musicbrainzTrackid: (json['MUSICBRAINZ_TRACKID'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      musicbrainzReleasetrackid:
          (json['MUSICBRAINZ_RELEASETRACKID'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      musicbrainzWorkid: (json['MUSICBRAINZ_WORKID'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MpdSongImplToJson(_$MpdSongImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'Last-Modified': instance.lastModified?.toIso8601String(),
      'Format': instance.format,
      'Time': instance.time,
      'duration': instance.duration?.inMicroseconds,
      'Pos': instance.pos,
      'Id': instance.id,
      'Artist': instance.artist,
      'ArtistSort': instance.artistSort,
      'Album': instance.album,
      'AlbumSort': instance.albumSort,
      'AlbumArtist': instance.albumArtist,
      'AlbumArtistSort': instance.albumArtistSort,
      'Title': instance.title,
      'TitleSort': instance.titleSort,
      'Track': instance.track,
      'Name': instance.name,
      'Genre': instance.genre,
      'Mood': instance.mood,
      'Date': instance.date,
      'OriginalDate': instance.originalDate,
      'Composer': instance.composer,
      'ComposerSort': instance.composerSort,
      'Performer': instance.performer,
      'Conductor': instance.conductor,
      'Work': instance.work,
      'Movement': instance.movement,
      'MovementNumber': instance.movementNumber,
      'Ensemble': instance.ensemble,
      'Location': instance.location,
      'Grouping': instance.grouping,
      'Comment': instance.comment,
      'Disc': instance.disc,
      'Label': instance.label,
      'MUSICBRAINZ_ARTISTID': instance.musicbrainzArtistid,
      'MUSICBRAINZ_ALBUMID': instance.musicbrainzAlbumid,
      'MUSICBRAINZ_ALBUMARTISTID': instance.musicbrainzAlbumartistid,
      'MUSICBRAINZ_TRACKID': instance.musicbrainzTrackid,
      'MUSICBRAINZ_RELEASETRACKID': instance.musicbrainzReleasetrackid,
      'MUSICBRAINZ_WORKID': instance.musicbrainzWorkid,
    };
