// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MpdMountImpl _$$MpdMountImplFromJson(Map<String, dynamic> json) =>
    _$MpdMountImpl(
      mount: parseString(json['mount'] as List<String>?),
      storage: parseString(json['storage'] as List<String>?),
    );

Map<String, dynamic> _$$MpdMountImplToJson(_$MpdMountImpl instance) =>
    <String, dynamic>{
      'mount': instance.mount,
      'storage': instance.storage,
    };
