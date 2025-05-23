// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_box_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userBoxHash() => r'587dbb06fe2d4fb6c2c521c2e33ac6fe1f45a588';

/// 2️⃣ Open the encrypted box.
/// Use `@Riverpod(keepAlive: true)` if you *never* want it disposed;
/// plain `@riverpod` auto-disposes when no-longer-used.
///
/// Copied from [userBox].
@ProviderFor(userBox)
final userBoxProvider =
    AutoDisposeFutureProvider<Box<LoginCredentials>>.internal(
  userBox,
  name: r'userBoxProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserBoxRef = AutoDisposeFutureProviderRef<Box<LoginCredentials>>;
String _$themeBoxHash() => r'4bb9751bc775083fb3fa0c70c22ee75ac34179fc';

/// See also [themeBox].
@ProviderFor(themeBox)
final themeBoxProvider = AutoDisposeFutureProvider<Box<String>>.internal(
  themeBox,
  name: r'themeBoxProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ThemeBoxRef = AutoDisposeFutureProviderRef<Box<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
