// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      firstname: json['firstname'] as String?,
      secondname: json['secondname'] as String?,
      commNameEn: json['commNameEn'] as String?,
      commNameAr: json['commNameAr'] as String?,
      phoneNumbers: json['phoneNumbers'] as int?,
      username: json['username'] as String?,
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'secondname': instance.secondname,
      'commNameEn': instance.commNameEn,
      'commNameAr': instance.commNameAr,
      'phoneNumbers': instance.phoneNumbers,
      'username': instance.username,
      'role': instance.role,
    };
