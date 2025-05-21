import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';

import '../../lib/features/authentication/data/authentication_repository.dart';
import '../../lib/features/authentication/data/hive/user_repository.dart';
import '../../lib/features/authentication/domain/login_response.dart';
import '../../lib/features/authentication/domain/register_response.dart';
import '../../lib/features/authentication/presentation/login/login_controller.dart';
import 'login_controller_test.mocks.dart';

@GenerateMocks([AuthenticationRepository, UserRepository])
void main() {
  late ProviderContainer container;
  late MockAuthenticationRepository mockAuthRepo;
  late MockUserRepository mockUserRepo;

  setUp(() {
    mockAuthRepo = MockAuthenticationRepository();
    mockUserRepo = MockUserRepository();
    container = ProviderContainer(
      overrides: [
        authenticationRepositoryProvider.overrideWithValue(mockAuthRepo),
        userRepositoryProvider.overrideWithValue(mockUserRepo),
      ],
    );
  });

  test('initial state is correct', () {
    when(mockUserRepo.getCachedUser()).thenAnswer((_) async => null);
    final controller = container.read(loginControllerProvider.notifier);
    expect(controller.state.user, isNull);
    expect(controller.state.rememberMe, isFalse);
    expect(controller.state.showPassword, isFalse);
    expect(controller.state.isLoading, isFalse);
  });

  group('login', () {
    test('successful login updates state correctly', () async {
      when(mockAuthRepo.login('test@test.com', 'password'))
          .thenAnswer((_) async => LoginResponse(token: 'token'));
      when(mockUserRepo.cacheUser(any)).thenAnswer((_) async => {});

      final controller = container.read(loginControllerProvider.notifier);
      controller.updateRememberMe(true);

      await controller.login(
        email: 'test@test.com',
        password: 'password',
      );

      expect(controller.state.isLoading, isFalse);
    });

    test('throws exception when credentials are empty', () async {
      final controller = container.read(loginControllerProvider.notifier);
      
      expect(
        () => controller.login(email: '', password: ''),
        throwsException,
      );
    });
  });

  group('register', () {
    test('successful registration updates state correctly', () async {
      when(mockAuthRepo.register('test@test.com', 'password'))
          .thenAnswer((_) async => RegisterResponse(token: 'token', id: 1));
      when(mockUserRepo.cacheUser(any)).thenAnswer((_) async => {});

      final controller = container.read(loginControllerProvider.notifier);

      await controller.register(
        email: 'test@test.com',
        password: 'password',
      );

      expect(controller.state.rememberMe, isTrue);
    });

    test('throws exception when credentials are empty', () async {
      final controller = container.read(loginControllerProvider.notifier);
      
      expect(
        () => controller.register(email: '', password: ''),
        throwsException,
      );
    });
  });
}