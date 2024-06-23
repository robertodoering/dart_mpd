// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MpdMessageImpl _$$MpdMessageImplFromJson(Map<String, dynamic> json) =>
    _$MpdMessageImpl(
      channel: parseStringSafe(json['channel'] as List<String>?),
      message: parseStringSafe(json['message'] as List<String>?),
    );

Map<String, dynamic> _$$MpdMessageImplToJson(_$MpdMessageImpl instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'message': instance.message,
    };
