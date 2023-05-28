// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdMount _$$_MpdMountFromJson(Map<String, dynamic> json) => _$_MpdMount(
      mount: parseString(json['mount'] as List<String>?),
      storage: parseString(json['storage'] as List<String>?),
    );

Map<String, dynamic> _$$_MpdMountToJson(_$_MpdMount instance) =>
    <String, dynamic>{
      'mount': instance.mount,
      'storage': instance.storage,
    };
