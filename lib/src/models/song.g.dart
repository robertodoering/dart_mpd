// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdSong _$$_MpdSongFromJson(Map<String, dynamic> json) => _$_MpdSong(
      file: json['file'] as String,
      lastModified: json['Last-Modified'] == null
          ? null
          : DateTime.parse(json['Last-Modified'] as String),
      artist: json['Artist'] as String?,
      title: json['Title'] as String?,
      genre: json['Genre'] as String?,
      format: json['Format'] as String?,
      time: parseInt(json['Time'] as String?),
      duration: parseDuration(json['duration'] as String?),
      pos: parseInt(json['Pos'] as String?),
      id: parseInt(json['Id'] as String?),
    );

Map<String, dynamic> _$$_MpdSongToJson(_$_MpdSong instance) =>
    <String, dynamic>{
      'file': instance.file,
      'Last-Modified': instance.lastModified?.toIso8601String(),
      'Artist': instance.artist,
      'Title': instance.title,
      'Genre': instance.genre,
      'Format': instance.format,
      'Time': instance.time,
      'duration': instance.duration?.inMicroseconds,
      'Pos': instance.pos,
      'Id': instance.id,
    };
