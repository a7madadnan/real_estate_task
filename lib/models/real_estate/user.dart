import 'package:freezed_annotation/freezed_annotation.dart';

import 'role.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    String? id,
    String? firstname,
    dynamic secondname,
    dynamic commNameEn,
    dynamic commNameAr,
    dynamic phoneNumbers,
    String? username,
    Role? role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
