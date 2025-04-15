// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUiModelImpl _$$AuthUiModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthUiModelImpl(
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      rememberMe: json['rememberMe'] as bool? ?? false,
      showPassword: json['showPassword'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$AuthUiModelImplToJson(_$AuthUiModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'rememberMe': instance.rememberMe,
      'showPassword': instance.showPassword,
      'isLoading': instance.isLoading,
    };
