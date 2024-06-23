// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'neighbor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MpdNeighborImpl _$$MpdNeighborImplFromJson(Map<String, dynamic> json) =>
    _$MpdNeighborImpl(
      neighbor: parseString(json['neighbor'] as List<String>?),
      name: parseString(json['name'] as List<String>?),
    );

Map<String, dynamic> _$$MpdNeighborImplToJson(_$MpdNeighborImpl instance) =>
    <String, dynamic>{
      'neighbor': instance.neighbor,
      'name': instance.name,
    };
