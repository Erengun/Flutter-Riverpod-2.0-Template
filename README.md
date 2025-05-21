# Flutter Riverpod Template - 2025 Edition

## Modern Flutter Architecture Template with Riverpod

A production-ready Flutter template built with the latest packages and best practices, supporting Flutter 3.32 and above. This template implements clean architecture principles and provides a robust foundation for building scalable applications.

### Key Features
- 🏗️ Clean Architecture with Domain-Driven Design
- 🎯 Riverpod 2.6+ with code generation
- 🔒 Built-in authentication pack with secure storage
- 🌐 Type-safe API integration with Retrofit 4.4+
- 📱 Responsive UI design with adaptive widgets
- 🌍 Internationalization ready with Easy Localization
- 💾 Secure local storage with Hive CE
- 🧪 Testing utilities pre-configured

## Tech Stack

### Core Libraries
- **State Management**
  - Riverpod 2.6.1 with code generation
  - Freezed 3.0.6 for immutable state
  - Type-safe dependency injection

- **Network Layer**
  - Dio 5.8.0 with interceptors
  - FPDart 1.1.0 for functional error handling

- **Local Storage**
  - Hive CE 2.11.1 with encryption
  - Secure key-value storage
  - Type-safe data persistence

- **UI & Navigation**
  - Go Router 14.8.0 with declarative routing
  - Google Fonts 6.2.1
  - Material 3 design system

### Developer Tools
- Flutter Lints 5.0.0
- Build Runner with code generation
- Comprehensive testing setup

## Project Structure

```
lib/
├── common/            # Shared widgets and components
│   ├── app_bar_gone.dart
│   ├── grid_item.dart
│   └── link_card.dart
├── config/           # App configuration
│   └── theme/        # Theme configuration
├── constants/        # App-wide constants
├── core/            # Core functionality
│   └── network/     # Network layer (Dio & Retrofit)
├── data/            # Data layer implementations
├── exceptions/      # Custom exceptions
├── features/        # Feature modules
│   └── authentication/
│       ├── data/       # Repository implementations
│       ├── domain/     # Business logic & entities
│       └── presentation/# UI components
├── hive/            # Local storage setup
├── router/          # Navigation & routing
├── utils/           # Utility functions
├── main.dart        # App entry point
└── my_app.dart      # App configuration
```

## Getting Started

### Prerequisites
- Flutter 3.32.0 or higher
- Dart 3.3.0 or higher

### Setup
1. Clone the template:
   ```bash
   git clone https://github.com/yourusername/Flutter-Riverpod-Template.git my_app
   cd my_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate code:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. Setup environment:
   ```bash
   cp .env.example .env
   ```

[Previous sections about changing app name, icon, etc. remain unchanged...]

## Authentication Module

The template includes a complete authentication system:

### 1. Data Layer
```dart
@RestApi()
abstract class AuthApi {
  @POST("/auth/login")
  Future<HttpResponse<TokenResponse>> login(@Body() LoginRequest request);
  
  @POST("/auth/refresh")
  Future<HttpResponse<TokenResponse>> refreshToken(@Body() RefreshRequest request);
}
```

### 2. Domain Layer
```dart
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    User? user,
    @Default('') String errorMessage,
  }) = _AuthState;
}
```

### 3. Presentation Layer
```dart
@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<AuthState> build() => const AuthState();
  
  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    final result = await ref.read(authRepositoryProvider)
        .login(email: email, password: password);
        
    state = await result.fold(
      (failure) => AsyncValue.error(failure, StackTrace.current),
      (user) => AsyncValue.data(AuthState(
        status: AuthStatus.authenticated,
        user: user,
      )),
    );
  }
}
```

## Contributing

See our [Contributing Guide](CONTRIBUTING.md) for details on how to:
- Set up your development environment
- Run tests
- Submit pull requests

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

[Previous sections about reach and community remain unchanged...]
# Flutter Riverpod Template - 2025 Edition

## Modern Flutter Architecture Template with Riverpod

A production-ready Flutter template built with the latest packages and best practices, supporting Flutter 3.32 and above. This template implements clean architecture principles and provides a robust foundation for building scalable applications.

### Key Features
- 🏗️ Clean Architecture with Domain-Driven Design
- 🎯 Riverpod 2.6+ with code generation
- 🔒 Built-in authentication pack with secure storage
- 🌐 Type-safe API integration with Retrofit 4.4+
- 📱 Responsive UI design with adaptive widgets
- 🌍 Internationalization ready with Easy Localization
- 💾 Secure local storage with Hive CE
- 🧪 Testing utilities pre-configured

## Tech Stack

### Core Libraries
- **State Management**
  - Riverpod 2.6.1 with code generation
  - Freezed 3.0.6 for immutable state
  - Type-safe dependency injection

- **Network Layer**
  - Dio 5.8.0 with interceptors
  - FPDart 1.1.0 for functional error handling

- **Local Storage**
  - Hive CE 2.11.1 with encryption
  - Secure key-value storage
  - Type-safe data persistence

- **UI & Navigation**
  - Go Router 14.8.0 with declarative routing
  - Google Fonts 6.2.1
  - Material 3 design system

### Developer Tools
- Flutter Lints 5.0.0
- Build Runner with code generation
- Comprehensive testing setup

## Project Structure

```
lib/
├── common/            # Shared widgets and components
│   ├── app_bar_gone.dart
│   ├── grid_item.dart
│   └── link_card.dart
├── config/           # App configuration
│   └── theme/        # Theme configuration
├── constants/        # App-wide constants
├── core/            # Core functionality
│   └── network/     # Network layer (Dio & Retrofit)
├── data/            # Data layer implementations
├── exceptions/      # Custom exceptions
├── features/        # Feature modules
│   └── authentication/
│       ├── data/       # Repository implementations
│       ├── domain/     # Business logic & entities
│       └── presentation/# UI components
├── hive/            # Local storage setup
├── router/          # Navigation & routing
├── utils/           # Utility functions
├── main.dart        # App entry point
└── my_app.dart      # App configuration
```

## Getting Started

### Prerequisites
- Flutter 3.32.0 or higher
- Dart 3.3.0 or higher

### Setup
1. Clone the template:
   ```bash
   git clone https://github.com/yourusername/Flutter-Riverpod-Template.git my_app
   cd my_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate code:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. Setup environment:
   ```bash
   cp .env.example .env
   ```

[Previous sections about changing app name, icon, etc. remain unchanged...]

## Authentication Module

The template includes a complete authentication system:

### 1. Data Layer
```dart
@RestApi()
abstract class AuthApi {
  @POST("/auth/login")
  Future<HttpResponse<TokenResponse>> login(@Body() LoginRequest request);
  
  @POST("/auth/refresh")
  Future<HttpResponse<TokenResponse>> refreshToken(@Body() RefreshRequest request);
}
```

### 2. Domain Layer
```dart
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    User? user,
    @Default('') String errorMessage,
  }) = _AuthState;
}
```

### 3. Presentation Layer
```dart
@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<AuthState> build() => const AuthState();
  
  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    final result = await ref.read(authRepositoryProvider)
        .login(email: email, password: password);
        
    state = await result.fold(
      (failure) => AsyncValue.error(failure, StackTrace.current),
      (user) => AsyncValue.data(AuthState(
        status: AuthStatus.authenticated,
        user: user,
      )),
    );
  }
}
```

## Contributing

See our [Contributing Guide](CONTRIBUTING.md) for details on how to:
- Set up your development environment
- Run tests
- Submit pull requests

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

[Previous sections about reach and community remain unchanged...]
