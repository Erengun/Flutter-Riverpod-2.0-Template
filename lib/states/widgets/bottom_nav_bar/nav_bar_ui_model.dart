import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_bar_ui_model.g.dart';
part 'nav_bar_ui_model.freezed.dart';

@freezed
class BottomNavBarUiModel with _$BottomNavBarUiModel {
  const factory BottomNavBarUiModel({
    @Default(0) int navIndex,
  }) = _BottomNavBarUiModel;

  factory BottomNavBarUiModel.fromJson(Map<String, dynamic> json) =>
      _$BottomNavBarUiModelFromJson(json);
}
