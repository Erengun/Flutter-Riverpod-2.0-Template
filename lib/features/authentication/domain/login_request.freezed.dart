// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginCredentials {
  String get email;
  String get password;

  /// Create a copy of LoginCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginCredentialsCopyWith<LoginCredentials> get copyWith =>
      _$LoginCredentialsCopyWithImpl<LoginCredentials>(
          this as LoginCredentials, _$identity);

  /// Serializes this LoginCredentials to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginCredentials &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginCredentials(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginCredentialsCopyWith<$Res> {
  factory $LoginCredentialsCopyWith(
          LoginCredentials value, $Res Function(LoginCredentials) _then) =
      _$LoginCredentialsCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginCredentialsCopyWithImpl<$Res>
    implements $LoginCredentialsCopyWith<$Res> {
  _$LoginCredentialsCopyWithImpl(this._self, this._then);

  final LoginCredentials _self;
  final $Res Function(LoginCredentials) _then;

  /// Create a copy of LoginCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LoginCredentials implements LoginCredentials {
  const _LoginCredentials({required this.email, required this.password});
  factory _LoginCredentials.fromJson(Map<String, dynamic> json) =>
      _$LoginCredentialsFromJson(json);

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of LoginCredentials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginCredentialsCopyWith<_LoginCredentials> get copyWith =>
      __$LoginCredentialsCopyWithImpl<_LoginCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginCredentialsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginCredentials &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginCredentials(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$LoginCredentialsCopyWith<$Res>
    implements $LoginCredentialsCopyWith<$Res> {
  factory _$LoginCredentialsCopyWith(
          _LoginCredentials value, $Res Function(_LoginCredentials) _then) =
      __$LoginCredentialsCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginCredentialsCopyWithImpl<$Res>
    implements _$LoginCredentialsCopyWith<$Res> {
  __$LoginCredentialsCopyWithImpl(this._self, this._then);

  final _LoginCredentials _self;
  final $Res Function(_LoginCredentials) _then;

  /// Create a copy of LoginCredentials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_LoginCredentials(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
