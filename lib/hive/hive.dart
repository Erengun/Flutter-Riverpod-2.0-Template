import 'dart:io';

import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'hive_registrar.g.dart';

Future<void> initHive() async {
    final Directory directory = await getTemporaryDirectory();
    Hive
    ..init(directory.path)..registerAdapters();
    await Hive.openBox<String>('prefs');
}
