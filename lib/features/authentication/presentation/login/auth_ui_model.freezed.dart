// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthUiModel {
  LoginCredentials? get user;
  bool get rememberMe;
  bool get showPassword;
  bool get isLoading;

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthUiModelCopyWith<AuthUiModel> get copyWith =>
      _$AuthUiModelCopyWithImpl<AuthUiModel>(this as AuthUiModel, _$identity);

  /// Serializes this AuthUiModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthUiModel &&
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

  @override
  String toString() {
    return 'AuthUiModel(user: $user, rememberMe: $rememberMe, showPassword: $showPassword, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class $AuthUiModelCopyWith<$Res> {
  factory $AuthUiModelCopyWith(
          AuthUiModel value, $Res Function(AuthUiModel) _then) =
      _$AuthUiModelCopyWithImpl;
  @useResult
  $Res call(
      {LoginCredentials? user,
      bool rememberMe,
      bool showPassword,
      bool isLoading});

  $LoginCredentialsCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthUiModelCopyWithImpl<$Res> implements $AuthUiModelCopyWith<$Res> {
  _$AuthUiModelCopyWithImpl(this._self, this._then);

  final AuthUiModel _self;
  final $Res Function(AuthUiModel) _then;

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
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginCredentials?,
      rememberMe: null == rememberMe
          ? _self.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginCredentialsCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $LoginCredentialsCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AuthUiModel implements AuthUiModel {
  const _AuthUiModel(
      {this.user,
      this.rememberMe = false,
      this.showPassword = false,
      this.isLoading = false});
  factory _AuthUiModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUiModelFromJson(json);

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

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthUiModelCopyWith<_AuthUiModel> get copyWith =>
      __$AuthUiModelCopyWithImpl<_AuthUiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthUiModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthUiModel &&
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

  @override
  String toString() {
    return 'AuthUiModel(user: $user, rememberMe: $rememberMe, showPassword: $showPassword, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class _$AuthUiModelCopyWith<$Res>
    implements $AuthUiModelCopyWith<$Res> {
  factory _$AuthUiModelCopyWith(
          _AuthUiModel value, $Res Function(_AuthUiModel) _then) =
      __$AuthUiModelCopyWithImpl;
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
class __$AuthUiModelCopyWithImpl<$Res> implements _$AuthUiModelCopyWith<$Res> {
  __$AuthUiModelCopyWithImpl(this._self, this._then);

  final _AuthUiModel _self;
  final $Res Function(_AuthUiModel) _then;

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
    Object? rememberMe = null,
    Object? showPassword = null,
    Object? isLoading = null,
  }) {
    return _then(_AuthUiModel(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginCredentials?,
      rememberMe: null == rememberMe
          ? _self.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AuthUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginCredentialsCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $LoginCredentialsCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
