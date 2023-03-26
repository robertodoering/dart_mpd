// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdStatus _$$_MpdStatusFromJson(Map<String, dynamic> json) => _$_MpdStatus(
      partition: json['partition'] as String?,
      volume: parseInt(json['volume'] as String?),
      repeat: parseBool(json['repeat'] as String?),
      random: parseBool(json['random'] as String?),
      single: MpdSingle.parse(json['single'] as String?),
      consume: parseBool(json['consume'] as String?),
      playlist: parseInt(json['playlist'] as String?),
      playlistlength: parseInt(json['playlistlength'] as String?),
      state: $enumDecodeNullable(_$MpdStateEnumMap, json['state']),
      song: parseInt(json['song'] as String?),
      songid: parseInt(json['songid'] as String?),
      nextsong: parseInt(json['nextsong'] as String?),
      nextsongid: parseInt(json['nextsongid'] as String?),
      elapsed: parseDouble(json['elapsed'] as String?),
      duration: parseDouble(json['duration'] as String?),
      bitrate: parseInt(json['bitrate'] as String?),
      crossfade: parseInt(json['crossfade'] as String?),
      mixramp: parseDouble(json['mixramp'] as String?),
      mixrampdelay: parseDouble(json['mixrampdelay'] as String?),
      audio: json['audio'] as String?,
      updatingDb: parseInt(json['updatingDb'] as String?),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_MpdStatusToJson(_$_MpdStatus instance) =>
    <String, dynamic>{
      'partition': instance.partition,
      'volume': instance.volume,
      'repeat': instance.repeat,
      'random': instance.random,
      'single': instance.single,
      'consume': instance.consume,
      'playlist': instance.playlist,
      'playlistlength': instance.playlistlength,
      'state': _$MpdStateEnumMap[instance.state],
      'song': instance.song,
      'songid': instance.songid,
      'nextsong': instance.nextsong,
      'nextsongid': instance.nextsongid,
      'elapsed': instance.elapsed,
      'duration': instance.duration,
      'bitrate': instance.bitrate,
      'crossfade': instance.crossfade,
      'mixramp': instance.mixramp,
      'mixrampdelay': instance.mixrampdelay,
      'audio': instance.audio,
      'updatingDb': instance.updatingDb,
      'error': instance.error,
    };

const _$MpdStateEnumMap = {
  MpdState.play: 'play',
  MpdState.stop: 'stop',
  MpdState.pause: 'pause',
};
