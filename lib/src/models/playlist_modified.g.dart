// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_modified.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistModifiedImpl _$$PlaylistModifiedImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaylistModifiedImpl(
      playlist: parseStringSafe(json['playlist'] as List<String>?),
      lastModified: parseDateTime(json['Last-Modified'] as List<String>?),
    );

Map<String, dynamic> _$$PlaylistModifiedImplToJson(
        _$PlaylistModifiedImpl instance) =>
    <String, dynamic>{
      'playlist': instance.playlist,
      'Last-Modified': instance.lastModified?.toIso8601String(),
    };
