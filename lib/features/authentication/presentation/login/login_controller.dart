import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/authentication_repository.dart';
import '../../domain/login_response.dart';
import '../../domain/register_response.dart';
import 'auth_ui_model.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  AuthUiModel build() {
    return const AuthUiModel();
  }

  void updateEmail(String email) {
    state = state.copyWith(email: email);
  }

  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }

  void updateRememberMe(bool rememberMe) {
    if (rememberMe) {
      ref.keepAlive();
    }
    state = state.copyWith(rememberMe: rememberMe);
  }

  void updateShowPassword(bool showPassword) {
    state = state.copyWith(showPassword: showPassword);
  }
  void clear() {
    state = const AuthUiModel();
  }

  Future<LoginResponse> login() async {
    if (state.email.isEmpty || state.password.isEmpty) {
      throw Exception('Email and password cannot be empty');
    }
    final LoginResponse loginResponse = await ref.read(authenticationRepositoryProvider).login(
      state.email,
      state.password,
    );
    if (loginResponse.token.isNotEmpty && !state.rememberMe) {
      // Handle successful login
      clear();
    }

    return loginResponse;
  }

  Future<RegisterResponse> register() async {
    if (state.email.isEmpty || state.password.isEmpty) {
      throw Exception('Email and password cannot be empty');
    }
    final RegisterResponse registerResponse = await ref.read(authenticationRepositoryProvider).register(
      state.email,
      state.password,
    );
    if (registerResponse.token.isNotEmpty) {
      // Handle successful registration
      clear();
    }
    return registerResponse;
  }
}
