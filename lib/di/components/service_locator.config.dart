// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:get_storage/get_storage.dart' as _i792;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/getstore/get_store_helper.dart' as _i478;
import '../../router/app_router.dart' as _i630;
import '../module/network_module.dart' as _i1000;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    await gh.factoryAsync<_i792.GetStorage>(
      () => networkModule.provideGetStorage(),
      preResolve: true,
    );
    gh.singleton<_i630.SGGoRouter>(() => _i630.SGGoRouter());
    gh.factory<_i478.GetStoreHelper>(
        () => _i478.GetStoreHelper(gh<_i792.GetStorage>()));
    await gh.factoryAsync<_i361.Dio>(
      () => networkModule.provideDio(gh<_i478.GetStoreHelper>()),
      preResolve: true,
    );
    return this;
  }
}

class _$NetworkModule extends _i1000.NetworkModule {}
