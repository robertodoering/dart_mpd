// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdMessage _$$_MpdMessageFromJson(Map<String, dynamic> json) =>
    _$_MpdMessage(
      channel: parseStringSafe(json['channel'] as List<String>?),
      message: parseStringSafe(json['message'] as List<String>?),
    );

Map<String, dynamic> _$$_MpdMessageToJson(_$_MpdMessage instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'message': instance.message,
    };
