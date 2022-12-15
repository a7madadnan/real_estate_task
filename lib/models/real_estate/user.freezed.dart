// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get secondname => throw _privateConstructorUsedError;
  String? get commNameEn => throw _privateConstructorUsedError;
  String? get commNameAr => throw _privateConstructorUsedError;
  int? get phoneNumbers => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? id,
      String? firstname,
      String? secondname,
      String? commNameEn,
      String? commNameAr,
      int? phoneNumbers,
      String? username,
      Role? role});

  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? secondname = freezed,
    Object? commNameEn = freezed,
    Object? commNameAr = freezed,
    Object? phoneNumbers = freezed,
    Object? username = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      secondname: freezed == secondname
          ? _value.secondname
          : secondname // ignore: cast_nullable_to_non_nullable
              as String?,
      commNameEn: freezed == commNameEn
          ? _value.commNameEn
          : commNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      commNameAr: freezed == commNameAr
          ? _value.commNameAr
          : commNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RoleCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? firstname,
      String? secondname,
      String? commNameEn,
      String? commNameAr,
      int? phoneNumbers,
      String? username,
      Role? role});

  @override
  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? secondname = freezed,
    Object? commNameEn = freezed,
    Object? commNameAr = freezed,
    Object? phoneNumbers = freezed,
    Object? username = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      secondname: freezed == secondname
          ? _value.secondname
          : secondname // ignore: cast_nullable_to_non_nullable
              as String?,
      commNameEn: freezed == commNameEn
          ? _value.commNameEn
          : commNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      commNameAr: freezed == commNameAr
          ? _value.commNameAr
          : commNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {this.id,
      this.firstname,
      this.secondname,
      this.commNameEn,
      this.commNameAr,
      this.phoneNumbers,
      this.username,
      this.role});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? id;
  @override
  final String? firstname;
  @override
  final String? secondname;
  @override
  final String? commNameEn;
  @override
  final String? commNameAr;
  @override
  final int? phoneNumbers;
  @override
  final String? username;
  @override
  final Role? role;

  @override
  String toString() {
    return 'User(id: $id, firstname: $firstname, secondname: $secondname, commNameEn: $commNameEn, commNameAr: $commNameAr, phoneNumbers: $phoneNumbers, username: $username, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.secondname, secondname) ||
                other.secondname == secondname) &&
            (identical(other.commNameEn, commNameEn) ||
                other.commNameEn == commNameEn) &&
            (identical(other.commNameAr, commNameAr) ||
                other.commNameAr == commNameAr) &&
            (identical(other.phoneNumbers, phoneNumbers) ||
                other.phoneNumbers == phoneNumbers) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstname, secondname,
      commNameEn, commNameAr, phoneNumbers, username, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {final String? id,
      final String? firstname,
      final String? secondname,
      final String? commNameEn,
      final String? commNameAr,
      final int? phoneNumbers,
      final String? username,
      final Role? role}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get id;
  @override
  String? get firstname;
  @override
  String? get secondname;
  @override
  String? get commNameEn;
  @override
  String? get commNameAr;
  @override
  int? get phoneNumbers;
  @override
  String? get username;
  @override
  Role? get role;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
