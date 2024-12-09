import 'package:flutter/material.dart';

class SizeConfigs {
  static const tabletSizeWidth = 800;
  static const desktopSizeWidth = 1200;

  static late double width;

  static int(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
  }
}
