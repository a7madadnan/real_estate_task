// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building_complex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildingComplex _$$_BuildingComplexFromJson(Map<String, dynamic> json) =>
    _$_BuildingComplex(
      buildingComplexId: json['buildingComplexId'],
      image: json['image'],
      commNameAr: json['commNameAr'],
      commNameEn: json['commNameEn'],
      lng: json['lng'],
      lat: json['lat'],
      district: json['district'] == null
          ? null
          : District.fromJson(json['district'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BuildingComplexToJson(_$_BuildingComplex instance) =>
    <String, dynamic>{
      'buildingComplexId': instance.buildingComplexId,
      'image': instance.image,
      'commNameAr': instance.commNameAr,
      'commNameEn': instance.commNameEn,
      'lng': instance.lng,
      'lat': instance.lat,
      'district': instance.district,
    };
