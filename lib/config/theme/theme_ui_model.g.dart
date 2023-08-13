// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThemeUiModel _$$_ThemeUiModelFromJson(Map<String, dynamic> json) =>
    _$_ThemeUiModel(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
    );

Map<String, dynamic> _$$_ThemeUiModelToJson(_$_ThemeUiModel instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
