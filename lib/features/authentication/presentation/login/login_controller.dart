import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/authentication_repository.dart';
import '../../data/hive/user_repository.dart';
import '../../domain/login_request.dart';
import '../../domain/login_response.dart';
import '../../domain/register_response.dart';
import 'auth_ui_model.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  AuthUiModel build() {
    LoginCredentials? user;
    final Future<LoginCredentials?> userLoginFuture =
        ref.read(userRepositoryProvider).getCachedUser();
    userLoginFuture.then((LoginCredentials? cachedUser) {
      if (cachedUser != null) {
        user = cachedUser;
      }
    }).catchError((error) {
      // Handle error if needed
    });
    return AuthUiModel(
      user: user,
    );
  }

  void updateEmail(String email) {
    state = state.copyWith(user: state.user?.copyWith(email: email));
  }

  void updatePassword(String password) {
    state = state.copyWith(user: state.user?.copyWith(password: password));
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

  void updateLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  Future<LoginResponse> login() async {
    final LoginCredentials? user = state.user;
    if (user == null) {
      throw Exception('Please provide user credentials');
    }
    if (user.email.isEmpty || user.password.isEmpty) {
      throw Exception('Email and password cannot be empty');
    }
    updateLoading(true);
    final LoginResponse loginResponse = await ref
        .read(authenticationRepositoryProvider)
        .login(
          user.email,
          user.password,
        )
        .catchError((error) {
      updateLoading(false);
      throw Exception('Login failed: $error');
    });
    if (loginResponse.token.isNotEmpty) {
      if (state.rememberMe) {
        state = state.copyWith(
          user: state.user?.copyWith(email: user.email, password: user.password),
        );
        await ref
            .read(userRepositoryProvider)
            .cacheUser(state.user!)
            .catchError((dynamic error) {
          throw Exception('Failed to cache user: $error');
        });
      }
    }
    updateLoading(false);
    return loginResponse;
  }

  Future<RegisterResponse> register({
    required String email,
    required String password,
  }) async {
    if (email.isEmpty || password.isEmpty) {
      throw Exception('Email and password cannot be empty');
    }
    final RegisterResponse registerResponse =
        await ref.read(authenticationRepositoryProvider).register(
              email,
              password,
            );
    if (registerResponse.token.isNotEmpty) {
      // Handle successful registration
      state = state.copyWith(
        user: state.user?.copyWith(email: email, password: password),
        rememberMe: true,
      );
      await ref
          .read(userRepositoryProvider)
          .cacheUser(state.user!)
          .catchError((dynamic error) {
        throw Exception('Failed to cache user: $error');
      });
    } else {
      throw Exception('Registration failed');
    }
    return registerResponse;
  }
}
