// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdStatus _$$_MpdStatusFromJson(Map<String, dynamic> json) => _$_MpdStatus(
      partition: parseString(json['partition'] as MpdValue?),
      volume: parseInt(json['volume'] as MpdValue?),
      repeat: parseBool(json['repeat'] as MpdValue?),
      random: parseBool(json['random'] as MpdValue?),
      single: parseMpdSingle(json['single'] as MpdValue?),
      consume: parseBool(json['consume'] as MpdValue?),
      playlist: parseInt(json['playlist'] as MpdValue?),
      playlistlength: parseInt(json['playlistlength'] as MpdValue?),
      state: parseMpdState(json['state'] as MpdValue?),
      song: parseInt(json['song'] as MpdValue?),
      songid: parseInt(json['songid'] as MpdValue?),
      nextsong: parseInt(json['nextsong'] as MpdValue?),
      nextsongid: parseInt(json['nextsongid'] as MpdValue?),
      elapsed: parseDouble(json['elapsed'] as MpdValue?),
      duration: parseDouble(json['duration'] as MpdValue?),
      bitrate: parseInt(json['bitrate'] as MpdValue?),
      crossfade: parseInt(json['crossfade'] as MpdValue?),
      mixramp: parseDouble(json['mixramp'] as MpdValue?),
      mixrampdelay: parseDouble(json['mixrampdelay'] as MpdValue?),
      audio: parseString(json['audio'] as MpdValue?),
      updatingDb: parseInt(json['updatingDb'] as MpdValue?),
      error: parseString(json['error'] as MpdValue?),
    );

Map<String, dynamic> _$$_MpdStatusToJson(_$_MpdStatus instance) =>
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
