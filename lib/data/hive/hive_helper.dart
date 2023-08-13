import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../models/user.dart';

const String userBox = 'user';

@injectable
class HiveHelper {
  // open box
  Future<void> initHive() async {
    // open box
    Hive.registerAdapter(UserModelAdapter());
  }

  Future<void> saveUser(UserModel user) async {
    final Box<dynamic> box = await Hive.openBox(userBox);
    box.put(userBox, user);
  }

  Future<UserModel?> getUser() async {
    final Box<UserModel> box = await Hive.openBox(userBox);
    return box.get(userBox);
  }

  // clear all data
  void clear() {
    Hive.deleteBoxFromDisk(userBox);
  }
}
