// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MpdPositionChangeImpl _$$MpdPositionChangeImplFromJson(
        Map<String, dynamic> json) =>
    _$MpdPositionChangeImpl(
      id: parseInt(json['Id'] as List<String>?),
      cpos: parseInt(json['cpos'] as List<String>?),
    );

Map<String, dynamic> _$$MpdPositionChangeImplToJson(
        _$MpdPositionChangeImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'cpos': instance.cpos,
    };
