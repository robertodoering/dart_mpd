// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MpdOutputImpl _$$MpdOutputImplFromJson(Map<String, dynamic> json) =>
    _$MpdOutputImpl(
      outputId: parseInt(json['outputId'] as List<String>?),
      outputname: parseString(json['outputname'] as List<String>?),
      outputenabled: parseBool(json['outputenabled'] as List<String>?),
      plugin: parseString(json['plugin'] as List<String>?),
    );

Map<String, dynamic> _$$MpdOutputImplToJson(_$MpdOutputImpl instance) =>
    <String, dynamic>{
      'outputId': instance.outputId,
      'outputname': instance.outputname,
      'outputenabled': instance.outputenabled,
      'plugin': instance.plugin,
    };
