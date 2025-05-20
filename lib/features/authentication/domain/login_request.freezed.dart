// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginCredentials _$LoginCredentialsFromJson(Map<String, dynamic> json) {
  return _LoginCredentials.fromJson(json);
}

/// @nodoc
mixin _$LoginCredentials {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginCredentials to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginCredentialsCopyWith<LoginCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCredentialsCopyWith<$Res> {
  factory $LoginCredentialsCopyWith(
          LoginCredentials value, $Res Function(LoginCredentials) then) =
      _$LoginCredentialsCopyWithImpl<$Res, LoginCredentials>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginCredentialsCopyWithImpl<$Res, $Val extends LoginCredentials>
    implements $LoginCredentialsCopyWith<$Res> {
  _$LoginCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCredentialsImplCopyWith<$Res>
    implements $LoginCredentialsCopyWith<$Res> {
  factory _$$LoginCredentialsImplCopyWith(_$LoginCredentialsImpl value,
          $Res Function(_$LoginCredentialsImpl) then) =
      __$$LoginCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginCredentialsImplCopyWithImpl<$Res>
    extends _$LoginCredentialsCopyWithImpl<$Res, _$LoginCredentialsImpl>
    implements _$$LoginCredentialsImplCopyWith<$Res> {
  __$$LoginCredentialsImplCopyWithImpl(_$LoginCredentialsImpl _value,
      $Res Function(_$LoginCredentialsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginCredentialsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginCredentialsImpl implements _LoginCredentials {
  const _$LoginCredentialsImpl({required this.email, required this.password});

  factory _$LoginCredentialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginCredentialsImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginCredentials(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCredentialsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCredentialsImplCopyWith<_$LoginCredentialsImpl> get copyWith =>
      __$$LoginCredentialsImplCopyWithImpl<_$LoginCredentialsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCredentialsImplToJson(
      this,
    );
  }
}

abstract class _LoginCredentials implements LoginCredentials {
  const factory _LoginCredentials(
      {required final String email,
      required final String password}) = _$LoginCredentialsImpl;

  factory _LoginCredentials.fromJson(Map<String, dynamic> json) =
      _$LoginCredentialsImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of LoginCredentials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginCredentialsImplCopyWith<_$LoginCredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
