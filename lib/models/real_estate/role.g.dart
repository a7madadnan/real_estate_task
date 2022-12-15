// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Role _$$_RoleFromJson(Map<String, dynamic> json) => _$_Role(
      name: $enumDecodeNullable(_$NameEnumMap, json['name']),
    );

Map<String, dynamic> _$$_RoleToJson(_$_Role instance) => <String, dynamic>{
      'name': _$NameEnumMap[instance.name],
    };

const _$NameEnumMap = {
  Name.customer: 'CUSTOMER',
  Name.agent: 'AGENT',
  Name.residentialCustomer: 'RESIDENTIAL_CUSTOMER',
  Name.constructionCompany: 'CONSTRUCTION_COMPANY',
  Name.unknown: 'unknown',
};
