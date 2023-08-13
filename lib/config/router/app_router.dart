// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../data/getstore/get_store_helper.dart';
import '../../di/components/service_locator.dart';
import '../../ui/features/info/info_screen.dart';
import '../../ui/home/home.dart';
import 'fade_extension.dart';

GetStoreHelper getStoreHelper = getIt<GetStoreHelper>();

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

@Singleton()
class SGGoRouter {
  final GoRouter goRoute = GoRouter(
    initialLocation: SGRoute.firstScreen.route,
    routes: <GoRoute>[
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
  GoRouter get getGoRouter => goRoute;
}

/// Example: Auth guard for Route Protection. GetStoreHelper is used to get token.
// ignore: unused_element
final String? Function(BuildContext context, GoRouterState state) _authGuard =
    (BuildContext context, GoRouterState state) {
  if (!(getStoreHelper.getToken() != null)) {
    return SGRoute.login.route;
  }
  return null;
};
