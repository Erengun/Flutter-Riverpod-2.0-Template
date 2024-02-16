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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$BottomNavBarUiModelImplCopyWith<$Res>
    implements $BottomNavBarUiModelCopyWith<$Res> {
  factory _$$BottomNavBarUiModelImplCopyWith(_$BottomNavBarUiModelImpl value,
          $Res Function(_$BottomNavBarUiModelImpl) then) =
      __$$BottomNavBarUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int navIndex});
}

/// @nodoc
class __$$BottomNavBarUiModelImplCopyWithImpl<$Res>
    extends _$BottomNavBarUiModelCopyWithImpl<$Res, _$BottomNavBarUiModelImpl>
    implements _$$BottomNavBarUiModelImplCopyWith<$Res> {
  __$$BottomNavBarUiModelImplCopyWithImpl(_$BottomNavBarUiModelImpl _value,
      $Res Function(_$BottomNavBarUiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navIndex = null,
  }) {
    return _then(_$BottomNavBarUiModelImpl(
      navIndex: null == navIndex
          ? _value.navIndex
          : navIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BottomNavBarUiModelImpl implements _BottomNavBarUiModel {
  const _$BottomNavBarUiModelImpl({this.navIndex = 0});

  factory _$BottomNavBarUiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BottomNavBarUiModelImplFromJson(json);

  @override
  @JsonKey()
  final int navIndex;

  @override
  String toString() {
    return 'BottomNavBarUiModel(navIndex: $navIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavBarUiModelImpl &&
            (identical(other.navIndex, navIndex) ||
                other.navIndex == navIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, navIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavBarUiModelImplCopyWith<_$BottomNavBarUiModelImpl> get copyWith =>
      __$$BottomNavBarUiModelImplCopyWithImpl<_$BottomNavBarUiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BottomNavBarUiModelImplToJson(
      this,
    );
  }
}

abstract class _BottomNavBarUiModel implements BottomNavBarUiModel {
  const factory _BottomNavBarUiModel({final int navIndex}) =
      _$BottomNavBarUiModelImpl;

  factory _BottomNavBarUiModel.fromJson(Map<String, dynamic> json) =
      _$BottomNavBarUiModelImpl.fromJson;

  @override
  int get navIndex;
  @override
  @JsonKey(ignore: true)
  _$$BottomNavBarUiModelImplCopyWith<_$BottomNavBarUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
