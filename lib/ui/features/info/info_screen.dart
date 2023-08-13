import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../widgets/app_bar_gone.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'grid_item.dart';

class SecondScreen extends ConsumerWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: const EmptyAppBar(),
        bottomNavigationBar: const BottomNavBar(),
        body: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => _buildMobileView(),
          tablet: (BuildContext context) => _buildTabletView(),
          desktop: (BuildContext context) => _buildTabletView(),
        ));
  }

  GridView _buildTabletView() {
    return GridView.count(
      crossAxisCount: 4,
      childAspectRatio: 2 / 1.15,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: packageList,
    );
  }

  GridView _buildMobileView() {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2 / 1.15,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: packageList,
    );
  }
}

///TODO: Parse this list from pub.dev
List<GridItem> packageList = <GridItem>[
  GridItem(
    title: 'flutter_riverpod',
    icon: Ionicons.leaf_outline,
    url: Uri.parse('https://pub.dev/packages/flutter_riverpod/versions/1.0.4'),
    version: '2.3.6',
  ),
  GridItem(
    title: 'riverpod_annotation',
    version: '2.1.1',
    icon: Ionicons.leaf_outline,
    url: Uri.parse(
        'https://pub.dev/packages/riverpod_annotation/versions/2.1.1'),
  ),
  GridItem(
    title: 'freezed_annotation',
    icon: Ionicons.color_wand_outline,
    url: Uri.parse(
        'https://pub.dev/packages/freezed_annotation/versions/0.14.2'),
    version: '0.14.2',
  ),
  GridItem(
    title: 'go_router',
    icon: Ionicons.arrow_forward_circle,
    url: Uri.parse('https://pub.dev/packages/go_router'),
    version: '9.0.0',
  ),
  GridItem(
    title: 'lints',
    icon: Ionicons.code_slash_outline,
    url: Uri.parse('https://pub.dev/packages/flutter_lints/versions/2.0.1'),
    version: '2.0.1',
  ),
  GridItem(
    title: 'path_provider',
    icon: Ionicons.extension_puzzle_outline,
    url: Uri.parse('https://pub.dev/packages/path_provider/versions/2.0.11'),
    version: '2.0.11',
  ),
  GridItem(
    title: 'flutter_displaymode',
    icon: Ionicons.speedometer_outline,
    url: Uri.parse(
        'https://pub.dev/packages/flutter_displaymode/versions/0.4.0'),
    version: '0.5.0',
  ),
  GridItem(
    title: 'easy_localization',
    icon: Ionicons.language_outline,
    url: Uri.parse('https://pub.dev/packages/easy_localization/versions/3.0.1'),
    version: '3.0.1',
  ),
  GridItem(
    title: 'hive',
    icon: Ionicons.folder_open_outline,
    url: Uri.parse('https://pub.dev/packages/hive/versions/2.2.3'),
    version: '2.2.3',
  ),
  GridItem(
    title: 'url_launcher',
    icon: Ionicons.share_outline,
    url: Uri.parse('https://pub.dev/packages/url_launcher/versions/6.1.5'),
    version: '6.1.7',
  ),
  GridItem(
    title: 'ionicons',
    icon: Ionicons.logo_ionic,
    url: Uri.parse('https://pub.dev/packages/ionicons/versions/0.2.1'),
    version: '0.2.2',
  ),
  GridItem(
    title: 'dio',
    icon: Ionicons.cloud_download_outline,
    url: Uri.parse('https://pub.dev/packages/dio'),
    version: '5.2.1+1',
  ),
  GridItem(
    title: 'equatable',
    icon: Ionicons.checkmark_done_circle_outline,
    url: Uri.parse('https://pub.dev/packages/equatable'),
    version: '2.0.5',
  ),
  GridItem(
    title: 'retrofit',
    icon: Ionicons.build_outline,
    url: Uri.parse('https://pub.dev/packages/retrofit'),
    version: '4.0.1',
  ),
  GridItem(
    title: 'logger',
    icon: Ionicons.bug_outline,
    url: Uri.parse('https://pub.dev/packages/logger'),
    version: '1.4.0',
  ),
  GridItem(
    title: 'injectable',
    icon: Ionicons.medical_outline,
    url: Uri.parse('https://pub.dev/packages/injectable'),
    version: '2.1.2',
  ),
  GridItem(
    title: 'get_it',
    icon: Ionicons.apps_outline,
    url: Uri.parse('https://pub.dev/packages/get_it'),
    version: '7.6.0',
  ),
  GridItem(
    title: 'get_storage',
    icon: Ionicons.save_outline,
    url: Uri.parse('https://pub.dev/packages/get_storage'),
    version: '2.1.1',
  ),
  GridItem(
    title: 'gap',
    icon: Ionicons.ellipse_outline,
    url: Uri.parse('https://pub.dev/packages/gap'),
    version: '3.0.1',
  ),
  GridItem(
    title: 'network_logger',
    icon: Ionicons.log_out_outline,
    url: Uri.parse('https://pub.dev/packages/network_logger'),
    version: '1.0.4',
  ),
  GridItem(
    title: 'json_annotation',
    icon: Ionicons.document_text_outline,
    url: Uri.parse('https://pub.dev/packages/json_annotation'),
    version: '4.8.1',
  ),
  GridItem(
    title: 'fpdart',
    icon: Ionicons.finger_print_outline,
    url: Uri.parse('https://pub.dev/packages/fpdart'),
    version: '0.6.0',
  ),
  GridItem(
    title: 'connectivity_plus',
    icon: Ionicons.wifi_outline,
    url: Uri.parse('https://pub.dev/packages/connectivity_plus'),
    version: '4.0.1',
  ),
  GridItem(
    title: 'responsive_builder',
    icon: Ionicons.desktop_outline,
    url: Uri.parse('https://pub.dev/packages/responsive_builder'),
    version: '0.7.0',
  ),
  GridItem(
    title: 'flex_color_scheme',
    icon: Ionicons.color_palette_outline,
    url: Uri.parse('https://pub.dev/packages/flex_color_scheme'),
    version: '7.1.2',
  ),
  GridItem(
    title: 'json_editor',
    icon: Ionicons.document_text_outline,
    url: Uri.parse('https://pub.dev/packages/json_editor'),
    version: '0.0.8',
  ),
  GridItem(
    title: 'liquid_pull_to_refresh',
    icon: Ionicons.refresh_outline,
    url: Uri.parse('https://pub.dev/packages/liquid_pull_to_refresh'),
    version: '3.0.1',
  ),
];
