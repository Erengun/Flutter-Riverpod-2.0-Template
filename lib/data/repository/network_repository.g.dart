// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$networkRepositoryHash() => r'689829fd7bdca53529df25f300f760e6cf302df8';

/// A repository class that extends _$NetworkRepository to handle network-related operations.
/// This class serves as an abstraction layer for managing network requests and responses,
/// providing a clean interface for the rest of the application to interact with network data.
///
/// Copied from [NetworkRepository].
@ProviderFor(NetworkRepository)
final networkRepositoryProvider =
    AutoDisposeNotifierProvider<NetworkRepository, Dio>.internal(
  NetworkRepository.new,
  name: r'networkRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$networkRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NetworkRepository = AutoDisposeNotifier<Dio>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
