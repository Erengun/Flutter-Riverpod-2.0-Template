// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeUiModel _$ThemeUiModelFromJson(Map<String, dynamic> json) {
  return _ThemeUiModel.fromJson(json);
}

/// @nodoc
mixin _$ThemeUiModel {
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeUiModelCopyWith<ThemeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeUiModelCopyWith<$Res> {
  factory $ThemeUiModelCopyWith(
          ThemeUiModel value, $Res Function(ThemeUiModel) then) =
      _$ThemeUiModelCopyWithImpl<$Res, ThemeUiModel>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$ThemeUiModelCopyWithImpl<$Res, $Val extends ThemeUiModel>
    implements $ThemeUiModelCopyWith<$Res> {
  _$ThemeUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeUiModelCopyWith<$Res>
    implements $ThemeUiModelCopyWith<$Res> {
  factory _$$_ThemeUiModelCopyWith(
          _$_ThemeUiModel value, $Res Function(_$_ThemeUiModel) then) =
      __$$_ThemeUiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$_ThemeUiModelCopyWithImpl<$Res>
    extends _$ThemeUiModelCopyWithImpl<$Res, _$_ThemeUiModel>
    implements _$$_ThemeUiModelCopyWith<$Res> {
  __$$_ThemeUiModelCopyWithImpl(
      _$_ThemeUiModel _value, $Res Function(_$_ThemeUiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$_ThemeUiModel(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThemeUiModel implements _ThemeUiModel {
  const _$_ThemeUiModel({this.themeMode = ThemeMode.system});

  factory _$_ThemeUiModel.fromJson(Map<String, dynamic> json) =>
      _$$_ThemeUiModelFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeUiModel(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeUiModel &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeUiModelCopyWith<_$_ThemeUiModel> get copyWith =>
      __$$_ThemeUiModelCopyWithImpl<_$_ThemeUiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThemeUiModelToJson(
      this,
    );
  }
}

abstract class _ThemeUiModel implements ThemeUiModel {
  const factory _ThemeUiModel({final ThemeMode themeMode}) = _$_ThemeUiModel;

  factory _ThemeUiModel.fromJson(Map<String, dynamic> json) =
      _$_ThemeUiModel.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeUiModelCopyWith<_$_ThemeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
