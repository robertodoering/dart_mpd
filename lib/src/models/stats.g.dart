// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdStats _$$_MpdStatsFromJson(Map<String, dynamic> json) => _$_MpdStats(
      artists: parseInt(json['artists'] as List<String>?),
      albums: parseInt(json['albums'] as List<String>?),
      songs: parseInt(json['songs'] as List<String>?),
      uptime: parseSeconds(json['uptime'] as List<String>?),
      dbPlaytime: parseSeconds(json['db_playtime'] as List<String>?),
      dbUpdate: parseTimestamp(json['db_update'] as List<String>?),
      playtime: parseSeconds(json['playtime'] as List<String>?),
    );

Map<String, dynamic> _$$_MpdStatsToJson(_$_MpdStats instance) =>
    <String, dynamic>{
      'artists': instance.artists,
      'albums': instance.albums,
      'songs': instance.songs,
      'uptime': instance.uptime?.inMicroseconds,
      'db_playtime': instance.dbPlaytime?.inMicroseconds,
      'db_update': instance.dbUpdate?.toIso8601String(),
      'playtime': instance.playtime?.inMicroseconds,
    };
