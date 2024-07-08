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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ThemeUiModelImplCopyWith<$Res>
    implements $ThemeUiModelCopyWith<$Res> {
  factory _$$ThemeUiModelImplCopyWith(
          _$ThemeUiModelImpl value, $Res Function(_$ThemeUiModelImpl) then) =
      __$$ThemeUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$ThemeUiModelImplCopyWithImpl<$Res>
    extends _$ThemeUiModelCopyWithImpl<$Res, _$ThemeUiModelImpl>
    implements _$$ThemeUiModelImplCopyWith<$Res> {
  __$$ThemeUiModelImplCopyWithImpl(
      _$ThemeUiModelImpl _value, $Res Function(_$ThemeUiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ThemeUiModelImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeUiModelImpl implements _ThemeUiModel {
  const _$ThemeUiModelImpl({this.themeMode = ThemeMode.system});

  factory _$ThemeUiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeUiModelImplFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeUiModel(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeUiModelImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeUiModelImplCopyWith<_$ThemeUiModelImpl> get copyWith =>
      __$$ThemeUiModelImplCopyWithImpl<_$ThemeUiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeUiModelImplToJson(
      this,
    );
  }
}

abstract class _ThemeUiModel implements ThemeUiModel {
  const factory _ThemeUiModel({final ThemeMode themeMode}) = _$ThemeUiModelImpl;

  factory _ThemeUiModel.fromJson(Map<String, dynamic> json) =
      _$ThemeUiModelImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$ThemeUiModelImplCopyWith<_$ThemeUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
