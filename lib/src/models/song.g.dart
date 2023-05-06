// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdSong _$$_MpdSongFromJson(Map<String, dynamic> json) => _$_MpdSong(
      file: parseStringOrEmpty(json['file'] as MpdValue?),
      lastModified: parseDateTime(json['Last-Modified'] as MpdValue?),
      format: parseString(json['Format'] as MpdValue?),
      time: parseInt(json['Time'] as MpdValue?),
      duration: parseDuration(json['duration'] as MpdValue?),
      pos: parseInt(json['Pos'] as MpdValue?),
      id: parseInt(json['Id'] as MpdValue?),
    );

Map<String, dynamic> _$$_MpdSongToJson(_$_MpdSong instance) =>
    <String, dynamic>{
      'file': instance.file,
      'Last-Modified': instance.lastModified?.toIso8601String(),
      'Format': instance.format,
      'Time': instance.time,
      'duration': instance.duration?.inMicroseconds,
      'Pos': instance.pos,
      'Id': instance.id,
    };
