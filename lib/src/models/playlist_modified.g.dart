// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_modified.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistModified _$$_PlaylistModifiedFromJson(Map<String, dynamic> json) =>
    _$_PlaylistModified(
      playlist: parseStringOrEmpty(json['playlist'] as MpdValue?),
      lastModified: parseDateTime(json['Last-Modified'] as MpdValue?),
    );

Map<String, dynamic> _$$_PlaylistModifiedToJson(_$_PlaylistModified instance) =>
    <String, dynamic>{
      'playlist': instance.playlist,
      'Last-Modified': instance.lastModified?.toIso8601String(),
    };
