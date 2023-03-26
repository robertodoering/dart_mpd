// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdOutput _$$_MpdOutputFromJson(Map<String, dynamic> json) => _$_MpdOutput(
      outputId: parseInt(json['outputId'] as String?),
      outputname: json['outputname'] as String?,
      outputenabled: parseBool(json['outputenabled'] as String?),
      plugin: json['plugin'] as String?,
    );

Map<String, dynamic> _$$_MpdOutputToJson(_$_MpdOutput instance) =>
    <String, dynamic>{
      'outputId': instance.outputId,
      'outputname': instance.outputname,
      'outputenabled': instance.outputenabled,
      'plugin': instance.plugin,
    };
