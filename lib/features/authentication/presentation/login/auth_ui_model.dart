import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_ui_model.freezed.dart';
part 'auth_ui_model.g.dart';

@freezed
abstract class AuthUiModel with _$AuthUiModel {
  const factory AuthUiModel({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool rememberMe,
    @Default(false) bool showPassword,
    @Default(false) bool isLoading,
  }) = _AuthUiModel;

  factory AuthUiModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUiModelFromJson(json);
}
