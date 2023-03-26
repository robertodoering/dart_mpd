// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdConfig _$$_MpdConfigFromJson(Map<String, dynamic> json) => _$_MpdConfig(
      musicDirectory: json['music_directory'] as String?,
      playlistDirectory: json['playlist_directory'] as String?,
      pcre: parseBool(json['pcre'] as String?),
    );

Map<String, dynamic> _$$_MpdConfigToJson(_$_MpdConfig instance) =>
    <String, dynamic>{
      'music_directory': instance.musicDirectory,
      'playlist_directory': instance.playlistDirectory,
      'pcre': instance.pcre,
    };
