import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'nav_bar_ui_model.dart';

part 'nav_bar_logic.g.dart';

@riverpod
class BottomNavBarLogic extends _$BottomNavBarLogic {
  @override
  BottomNavBarUiModel build() {
    return const BottomNavBarUiModel();
  }

  void setNavIndex(int index) {
    state = state.copyWith(navIndex: index);
  }
}
