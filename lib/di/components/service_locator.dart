import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'service_locator.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async => getIt.init();
