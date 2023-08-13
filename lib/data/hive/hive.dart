import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initHive() async {
  if (kIsWeb) {
    await Hive.initFlutter();
    await Hive.openBox<String>('prefs');
    return;
  }
  final Directory tmpDir = await getTemporaryDirectory();
  await Hive.initFlutter(tmpDir.toString());
  await Hive.openBox<String>('prefs');
}
