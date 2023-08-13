import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../../config/router/app_router.dart';
import '../../states/widgets/bottom_nav_bar/nav_bar_logic.dart';
import '../../utils/context_extensions.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: prefer_final_locals, always_specify_types
    var nav = ref.watch(bottomNavBarLogicProvider);

    return Padding(
      /// Padding
      padding: const EdgeInsets.only(bottom: 8),
      child: WaterDropNavBar(
        key: const Key('bottom_nav_bar'),
        backgroundColor: context.colorScheme.background,
        waterDropColor: context.colorScheme.primary,
        selectedIndex: nav.navIndex,
        onItemSelected: (int index) {
          ref.read(bottomNavBarLogicProvider.notifier).setNavIndex(index);
    
          /// If you have more than 2 screens, you have to implement a switch case Example:
          /// case 0:
          ///  context.go(SGRoute.firstScreen.route);
          /// case 1:
          ///   context.go(SGRoute.secondScreen.route);
          context.go(nav.navIndex == 1
              ? SGRoute.firstScreen.route
              : SGRoute.secondScreen.route);
        },
        barItems: <BarItem>[
          BarItem(
            filledIcon: Ionicons.home,
            outlinedIcon: Ionicons.home_outline,
          ),
          BarItem(
            filledIcon: Ionicons.information_circle,
            outlinedIcon: Ionicons.information_circle_outline,
          ),
        ],
      ),
    );
  }
}
