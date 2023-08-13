// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_bar_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BottomNavBarUiModel _$BottomNavBarUiModelFromJson(Map<String, dynamic> json) {
  return _BottomNavBarUiModel.fromJson(json);
}

/// @nodoc
mixin _$BottomNavBarUiModel {
  int get navIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BottomNavBarUiModelCopyWith<BottomNavBarUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavBarUiModelCopyWith<$Res> {
  factory $BottomNavBarUiModelCopyWith(
          BottomNavBarUiModel value, $Res Function(BottomNavBarUiModel) then) =
      _$BottomNavBarUiModelCopyWithImpl<$Res, BottomNavBarUiModel>;
  @useResult
  $Res call({int navIndex});
}

/// @nodoc
class _$BottomNavBarUiModelCopyWithImpl<$Res, $Val extends BottomNavBarUiModel>
    implements $BottomNavBarUiModelCopyWith<$Res> {
  _$BottomNavBarUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navIndex = null,
  }) {
    return _then(_value.copyWith(
      navIndex: null == navIndex
          ? _value.navIndex
          : navIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomNavBarUiModelCopyWith<$Res>
    implements $BottomNavBarUiModelCopyWith<$Res> {
  factory _$$_BottomNavBarUiModelCopyWith(_$_BottomNavBarUiModel value,
          $Res Function(_$_BottomNavBarUiModel) then) =
      __$$_BottomNavBarUiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int navIndex});
}

/// @nodoc
class __$$_BottomNavBarUiModelCopyWithImpl<$Res>
    extends _$BottomNavBarUiModelCopyWithImpl<$Res, _$_BottomNavBarUiModel>
    implements _$$_BottomNavBarUiModelCopyWith<$Res> {
  __$$_BottomNavBarUiModelCopyWithImpl(_$_BottomNavBarUiModel _value,
      $Res Function(_$_BottomNavBarUiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navIndex = null,
  }) {
    return _then(_$_BottomNavBarUiModel(
      navIndex: null == navIndex
          ? _value.navIndex
          : navIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BottomNavBarUiModel implements _BottomNavBarUiModel {
  const _$_BottomNavBarUiModel({this.navIndex = 0});

  factory _$_BottomNavBarUiModel.fromJson(Map<String, dynamic> json) =>
      _$$_BottomNavBarUiModelFromJson(json);

  @override
  @JsonKey()
  final int navIndex;

  @override
  String toString() {
    return 'BottomNavBarUiModel(navIndex: $navIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavBarUiModel &&
            (identical(other.navIndex, navIndex) ||
                other.navIndex == navIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, navIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomNavBarUiModelCopyWith<_$_BottomNavBarUiModel> get copyWith =>
      __$$_BottomNavBarUiModelCopyWithImpl<_$_BottomNavBarUiModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BottomNavBarUiModelToJson(
      this,
    );
  }
}

abstract class _BottomNavBarUiModel implements BottomNavBarUiModel {
  const factory _BottomNavBarUiModel({final int navIndex}) =
      _$_BottomNavBarUiModel;

  factory _BottomNavBarUiModel.fromJson(Map<String, dynamic> json) =
      _$_BottomNavBarUiModel.fromJson;

  @override
  int get navIndex;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavBarUiModelCopyWith<_$_BottomNavBarUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
