// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MpdStatusImpl _$$MpdStatusImplFromJson(Map<String, dynamic> json) =>
    _$MpdStatusImpl(
      partition: parseString(json['partition'] as List<String>?),
      volume: parseInt(json['volume'] as List<String>?),
      repeat: parseBool(json['repeat'] as List<String>?),
      random: parseBool(json['random'] as List<String>?),
      single: parseMpdSingle(json['single'] as List<String>?),
      consume: parseBool(json['consume'] as List<String>?),
      playlist: parseInt(json['playlist'] as List<String>?),
      playlistlength: parseInt(json['playlistlength'] as List<String>?),
      state: parseMpdState(json['state'] as List<String>?),
      song: parseInt(json['song'] as List<String>?),
      songid: parseInt(json['songid'] as List<String>?),
      nextsong: parseInt(json['nextsong'] as List<String>?),
      nextsongid: parseInt(json['nextsongid'] as List<String>?),
      elapsed: parseDouble(json['elapsed'] as List<String>?),
      duration: parseDouble(json['duration'] as List<String>?),
      bitrate: parseInt(json['bitrate'] as List<String>?),
      crossfade: parseInt(json['crossfade'] as List<String>?),
      mixramp: parseDouble(json['mixramp'] as List<String>?),
      mixrampdelay: parseDouble(json['mixrampdelay'] as List<String>?),
      audio: parseString(json['audio'] as List<String>?),
      updatingDb: parseInt(json['updatingDb'] as List<String>?),
      error: parseString(json['error'] as List<String>?),
    );

Map<String, dynamic> _$$MpdStatusImplToJson(_$MpdStatusImpl instance) =>
    <String, dynamic>{
      'partition': instance.partition,
      'volume': instance.volume,
      'repeat': instance.repeat,
      'random': instance.random,
      'single': _$MpdSingleEnumMap[instance.single],
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

const _$MpdSingleEnumMap = {
  MpdSingle.enabled: 'enabled',
  MpdSingle.disabled: 'disabled',
  MpdSingle.oneshot: 'oneshot',
};

const _$MpdStateEnumMap = {
  MpdState.play: 'play',
  MpdState.stop: 'stop',
  MpdState.pause: 'pause',
};
