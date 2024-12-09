import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class CustomLayoutBuilder extends StatelessWidget {
  const CustomLayoutBuilder({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < SizeConfigs.tabletSizeWidth) {
          return mobileLayout(context);
        } else if (constrains.maxWidth < SizeConfigs.desktopSizeWidth) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
