// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/authentication/presentation/login/login_screen.dart';
import '../features/home/home.dart';
import '../features/info/info_screen.dart';
import 'fade_extension.dart';

part 'app_router.g.dart';

enum SGRoute {
  home,
  firstScreen,
  secondScreen,
  login,
  register,
  forgotPassword,
  profile,
  editProfile,
  changePassword;

  String get route => '/${toString().replaceAll('SGRoute.', '')}';
  String get name => toString().replaceAll('SGRoute.', '');
}

@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
      initialLocation: SGRoute.login.route,
      routes: <GoRoute>[
        GoRoute(
            path: SGRoute.login.route,
            builder: (BuildContext context, GoRouterState state) {
              return const LoginScreen();
            }).fade(),
        GoRoute(
          path: SGRoute.firstScreen.route,
          builder: (BuildContext context, GoRouterState state) =>
              const HomeScreen(),
        ).fade(),
        GoRoute(
          path: SGRoute.secondScreen.route,
          builder: (BuildContext context, GoRouterState state) =>
              const SecondScreen(),
        ).fade(),
      ],
    );
