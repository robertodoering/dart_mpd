// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdMessage _$$_MpdMessageFromJson(Map<String, dynamic> json) =>
    _$_MpdMessage(
      channel: parseStringOrEmpty(json['channel'] as MpdValue?),
      message: parseStringOrEmpty(json['message'] as MpdValue?),
    );

Map<String, dynamic> _$$_MpdMessageToJson(_$_MpdMessage instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'message': instance.message,
    };
