// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:get_storage/get_storage.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/getstore/get_store_helper.dart' as _i4;
import '../../data/hive/hive_helper.dart' as _i5;
import '../../router/app_router.dart' as _i6;
import '../module/network_module.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    await gh.factoryAsync<_i3.GetStorage>(
      () => networkModule.provideGetStorage(),
      preResolve: true,
    );
    gh.factory<_i4.GetStoreHelper>(
        () => _i4.GetStoreHelper(gh<_i3.GetStorage>()));
    gh.factory<_i5.HiveHelper>(() => _i5.HiveHelper());
    gh.singleton<_i6.SGGoRouter>(_i6.SGGoRouter());
    await gh.factoryAsync<_i7.Dio>(
      () => networkModule.provideDio(gh<_i4.GetStoreHelper>()),
      preResolve: true,
    );
    return this;
  }
}

class _$NetworkModule extends _i8.NetworkModule {}
