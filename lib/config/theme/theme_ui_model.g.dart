// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeUiModelImpl _$$ThemeUiModelImplFromJson(Map<String, dynamic> json) =>
    _$ThemeUiModelImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
    );

Map<String, dynamic> _$$ThemeUiModelImplToJson(_$ThemeUiModelImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
