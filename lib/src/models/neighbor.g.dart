// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'neighbor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpdNeighbor _$$_MpdNeighborFromJson(Map<String, dynamic> json) =>
    _$_MpdNeighbor(
      neighbor: parseString(json['neighbor'] as List<String>?),
      name: parseString(json['name'] as List<String>?),
    );

Map<String, dynamic> _$$_MpdNeighborToJson(_$_MpdNeighbor instance) =>
    <String, dynamic>{
      'neighbor': instance.neighbor,
      'name': instance.name,
    };
