import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../../router/app_router.dart';
import 'nav_bar_logic.dart';
import 'nav_bar_ui_model.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final BottomNavBarUiModel nav = ref.watch(bottomNavBarLogicProvider);

    return NavigationBar(
      destinations: <Widget>[
        NavigationDestination(
          icon: const Icon(Ionicons.home_outline),
          selectedIcon: const Icon(Ionicons.home),
          label: 'home'.tr(),
        ),
        NavigationDestination(
          icon: const Icon(Ionicons.information_circle_outline),
          selectedIcon: const Icon(Ionicons.information_circle),
          label: 'info'.tr(),
        ),
      ],
      onDestinationSelected: (int index) {
        ref.read(bottomNavBarLogicProvider.notifier).setNavIndex(index);
        context.go(nav.navIndex == 1
            ? SGRoute.firstScreen.route
            : SGRoute.secondScreen.route);
      },
      selectedIndex: nav.navIndex,
    );
  }
}
