// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdOutput _$$_MpdOutputFromJson(Map<String, dynamic> json) => _$_MpdOutput(
      outputId: parseInt(json['outputId'] as MpdValue?),
      outputname: parseString(json['outputname'] as MpdValue?),
      outputenabled: parseBool(json['outputenabled'] as MpdValue?),
      plugin: parseString(json['plugin'] as MpdValue?),
    );

Map<String, dynamic> _$$_MpdOutputToJson(_$_MpdOutput instance) =>
    <String, dynamic>{
      'outputId': instance.outputId,
      'outputname': instance.outputname,
      'outputenabled': instance.outputenabled,
      'plugin': instance.plugin,
    };
