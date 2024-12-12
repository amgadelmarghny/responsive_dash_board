import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/custom_layout_builder.dart';
import 'package:responsive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < SizeConfigs.tabletSizeWidth
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfigs.tabletSizeWidth
          ? const Padding(
              padding: EdgeInsets.only(right: 200),
              child: CustomDrawer(),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: CustomLayoutBuilder(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
