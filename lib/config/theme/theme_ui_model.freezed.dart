// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeUiModel {
  ThemeMode get themeMode;

  /// Create a copy of ThemeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeUiModelCopyWith<ThemeUiModel> get copyWith =>
      _$ThemeUiModelCopyWithImpl<ThemeUiModel>(
          this as ThemeUiModel, _$identity);

  /// Serializes this ThemeUiModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeUiModel &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @override
  String toString() {
    return 'ThemeUiModel(themeMode: $themeMode)';
  }
}

/// @nodoc
abstract mixin class $ThemeUiModelCopyWith<$Res> {
  factory $ThemeUiModelCopyWith(
          ThemeUiModel value, $Res Function(ThemeUiModel) _then) =
      _$ThemeUiModelCopyWithImpl;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$ThemeUiModelCopyWithImpl<$Res> implements $ThemeUiModelCopyWith<$Res> {
  _$ThemeUiModelCopyWithImpl(this._self, this._then);

  final ThemeUiModel _self;
  final $Res Function(ThemeUiModel) _then;

  /// Create a copy of ThemeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_self.copyWith(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ThemeUiModel implements ThemeUiModel {
  const _ThemeUiModel({this.themeMode = ThemeMode.system});
  factory _ThemeUiModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeUiModelFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;

  /// Create a copy of ThemeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThemeUiModelCopyWith<_ThemeUiModel> get copyWith =>
      __$ThemeUiModelCopyWithImpl<_ThemeUiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThemeUiModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeUiModel &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @override
  String toString() {
    return 'ThemeUiModel(themeMode: $themeMode)';
  }
}

/// @nodoc
abstract mixin class _$ThemeUiModelCopyWith<$Res>
    implements $ThemeUiModelCopyWith<$Res> {
  factory _$ThemeUiModelCopyWith(
          _ThemeUiModel value, $Res Function(_ThemeUiModel) _then) =
      __$ThemeUiModelCopyWithImpl;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$ThemeUiModelCopyWithImpl<$Res>
    implements _$ThemeUiModelCopyWith<$Res> {
  __$ThemeUiModelCopyWithImpl(this._self, this._then);

  final _ThemeUiModel _self;
  final $Res Function(_ThemeUiModel) _then;

  /// Create a copy of ThemeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_ThemeUiModel(
      themeMode: null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

// dart format on
