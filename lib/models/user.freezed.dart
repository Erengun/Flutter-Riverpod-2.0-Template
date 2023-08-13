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

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  String get token => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({String token, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$_LoginResponseCopyWith(
          _$_LoginResponse value, $Res Function(_$_LoginResponse) then) =
      __$$_LoginResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginResponseCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$_LoginResponse>
    implements _$$_LoginResponseCopyWith<$Res> {
  __$$_LoginResponseCopyWithImpl(
      _$_LoginResponse _value, $Res Function(_$_LoginResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$_LoginResponse(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponse implements _LoginResponse {
  const _$_LoginResponse({required this.token, required this.user});

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseFromJson(json);

  @override
  final String token;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'LoginResponse(token: $token, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      __$$_LoginResponseCopyWithImpl<_$_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {required final String token,
      required final UserModel user}) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

  @override
  String get token;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: '_id')
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String get role => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') @HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String email,
      @HiveField(3) String role,
      @HiveField(4) bool verified});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? verified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') @HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String email,
      @HiveField(3) String role,
      @HiveField(4) bool verified});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? verified = null,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'UserModelAdapter')
class _$_UserModel extends _UserModel {
  _$_UserModel(
      {@JsonKey(name: '_id') @HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.email,
      @HiveField(3) required this.role,
      @HiveField(4) required this.verified})
      : super._();

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String email;
  @override
  @HiveField(3)
  final String role;
  @override
  @HiveField(4)
  final bool verified;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, role: $role, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, role, verified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  factory _UserModel(
      {@JsonKey(name: '_id') @HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String email,
      @HiveField(3) required final String role,
      @HiveField(4) required final bool verified}) = _$_UserModel;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: '_id')
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get email;
  @override
  @HiveField(3)
  String get role;
  @override
  @HiveField(4)
  bool get verified;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
