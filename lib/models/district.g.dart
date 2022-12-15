// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildingComplex _$$_BuildingComplexFromJson(Map<String, dynamic> json) =>
    _$_BuildingComplex(
      id: json['id'] as String?,
      arName: json['arName'] as String?,
      enName: json['enName'] as String?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BuildingComplexToJson(_$_BuildingComplex instance) =>
    <String, dynamic>{
      'id': instance.id,
      'arName': instance.arName,
      'enName': instance.enName,
      'city': instance.city,
    };
