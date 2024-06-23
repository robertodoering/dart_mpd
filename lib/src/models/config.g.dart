// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MpdConfigImpl _$$MpdConfigImplFromJson(Map<String, dynamic> json) =>
    _$MpdConfigImpl(
      musicDirectory: parseString(json['music_directory'] as List<String>?),
      playlistDirectory:
          parseString(json['playlist_directory'] as List<String>?),
      pcre: parseBool(json['pcre'] as List<String>?),
    );

Map<String, dynamic> _$$MpdConfigImplToJson(_$MpdConfigImpl instance) =>
    <String, dynamic>{
      'music_directory': instance.musicDirectory,
      'playlist_directory': instance.playlistDirectory,
      'pcre': instance.pcre,
    };
