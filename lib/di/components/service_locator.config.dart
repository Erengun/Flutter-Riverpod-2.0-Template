// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas, always_specify_types
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:get_storage/get_storage.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../../config/router/app_router.dart' as _i6;
import '../../data/getstore/get_store_helper.dart' as _i3;
import '../../data/hive/hive_helper.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.GetStoreHelper>(
        () => _i3.GetStoreHelper(gh<_i4.GetStorage>()));
    gh.factory<_i5.HiveHelper>(() => _i5.HiveHelper());
    gh.singleton<_i6.SGGoRouter>(_i6.SGGoRouter());
    return this;
  }
}
