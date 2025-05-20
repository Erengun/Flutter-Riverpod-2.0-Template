// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthUiModel _$AuthUiModelFromJson(Map<String, dynamic> json) {
  return _AuthUiModel.fromJson(json);
}

/// @nodoc
mixin _$AuthUiModel {
  LoginCredentials? get user => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Serializes this AuthUiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthUiModelCopyWith<AuthUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUiModelCopyWith<$Res> {
  factory $AuthUiModelCopyWith(
          AuthUiModel value, $Res Function(AuthUiModel) then) =
      _$AuthUiModelCopyWithImpl<$Res, AuthUiModel>;
  @useResult
  $Res call(
      {LoginCredentials? user,
      bool rememberMe,
      bool showPassword,
      bool isLoading});

  $LoginCredentialsCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthUiModelCopyWithImpl<$Res, $Val extends AuthUiModel>
    implements $AuthUiModelCopyWith<$Res> {
  _$AuthUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? rememberMe = null,
    Object? showPassword = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginCredentials?,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginCredentialsCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $LoginCredentialsCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthUiModelImplCopyWith<$Res>
    implements $AuthUiModelCopyWith<$Res> {
  factory _$$AuthUiModelImplCopyWith(
          _$AuthUiModelImpl value, $Res Function(_$AuthUiModelImpl) then) =
      __$$AuthUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginCredentials? user,
      bool rememberMe,
      bool showPassword,
      bool isLoading});

  @override
  $LoginCredentialsCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthUiModelImplCopyWithImpl<$Res>
    extends _$AuthUiModelCopyWithImpl<$Res, _$AuthUiModelImpl>
    implements _$$AuthUiModelImplCopyWith<$Res> {
  __$$AuthUiModelImplCopyWithImpl(
      _$AuthUiModelImpl _value, $Res Function(_$AuthUiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? rememberMe = null,
    Object? showPassword = null,
    Object? isLoading = null,
  }) {
    return _then(_$AuthUiModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginCredentials?,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUiModelImpl implements _AuthUiModel {
  const _$AuthUiModelImpl(
      {this.user,
      this.rememberMe = false,
      this.showPassword = false,
      this.isLoading = false});

  factory _$AuthUiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUiModelImplFromJson(json);

  @override
  final LoginCredentials? user;
  @override
  @JsonKey()
  final bool rememberMe;
  @override
  @JsonKey()
  final bool showPassword;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AuthUiModel(user: $user, rememberMe: $rememberMe, showPassword: $showPassword, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUiModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user, rememberMe, showPassword, isLoading);

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUiModelImplCopyWith<_$AuthUiModelImpl> get copyWith =>
      __$$AuthUiModelImplCopyWithImpl<_$AuthUiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUiModelImplToJson(
      this,
    );
  }
}

abstract class _AuthUiModel implements AuthUiModel {
  const factory _AuthUiModel(
      {final LoginCredentials? user,
      final bool rememberMe,
      final bool showPassword,
      final bool isLoading}) = _$AuthUiModelImpl;

  factory _AuthUiModel.fromJson(Map<String, dynamic> json) =
      _$AuthUiModelImpl.fromJson;

  @override
  LoginCredentials? get user;
  @override
  bool get rememberMe;
  @override
  bool get showPassword;
  @override
  bool get isLoading;

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUiModelImplCopyWith<_$AuthUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
