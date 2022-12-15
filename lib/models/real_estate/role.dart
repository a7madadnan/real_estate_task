import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.freezed.dart';
part 'role.g.dart';

abstract class TypeEnum {
  String getName(BuildContext context);
}

enum Name implements TypeEnum {
  @JsonValue('CUSTOMER')
  customer,
  @JsonValue('AGENT')
  agent,
  @JsonValue('RESIDENTIAL_CUSTOMER')
  residentialCustomer,
  @JsonValue('CONSTRUCTION_COMPANY')
  constructionCompany,

  unknown;

  @override
  @override
  String getName(BuildContext context) {
    switch (this) {
      case customer:
        return "Customer";
      case agent:
        return "agent";
      case residentialCustomer:
        return "Residential Customer";
      case constructionCompany:
        return "Construction Company";
      case Name.unknown:
        return "";
    }
  }
}

@freezed
class Role with _$Role {
  factory Role({
    Name? name,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
