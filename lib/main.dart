// ignore_for_file: always_put_control_body_on_new_line

import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

import 'constants/strings.dart';
import 'data/hive/hive.dart';
import 'data/hive/hive_helper.dart';
import 'di/components/service_locator.dart';
import 'my_app.dart';

/// Try using const constructors as much as possible!

void main() async {
  /// Initialize packages
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await GetStorage.init();
  await initHive();
  await configureDependencies();
  await setPreferredOrientations();
  getIt<HiveHelper>().initHive();
  if (!kIsWeb) {
    if (Platform.isAndroid) {
      await FlutterDisplayMode.setHighRefreshRate();
    }
  }

  runApp(
    EasyLocalization(
      supportedLocales: const <Locale>[
        /// Add your supported locales here
        Locale('en'),
        Locale('tr'),
      ],
      path: Strings.localizationsPath,
      fallbackLocale: const Locale('en', ''),
      child: const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
  /// Add this line to get the error stack trace in release mode
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}
