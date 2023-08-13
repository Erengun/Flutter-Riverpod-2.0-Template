import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

const String tokenKey = 'token';
const String emailKey = 'email';
const String password = 'password';

@injectable
/// Example: GetStoreHelper is used to save and get token, email and password.
class GetStoreHelper {
  GetStoreHelper(this.getStorage);
  GetStorage getStorage;

  // save auth token
  Future<void> saveToken(String token) async {
    await getStorage.write(tokenKey, token);
  }

  // get auth token
  String? getToken() {
    return getStorage.read(tokenKey);
  }

  // email and password
  Future<void> saveEmailAndPassword(String email, String password) async {
    getStorage.write(emailKey, email);
    getStorage.write(password, password);
  }

  String? getEmail() {
    return getStorage.read(emailKey);
  }

  String? getPassword() {
    return getStorage.read(password);
  }

  void clear() {
    getStorage.erase();
  }
}
