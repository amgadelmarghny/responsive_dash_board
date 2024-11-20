import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: isActive
            ? AppStyles.styleBold16(context)
            : AppStyles.styleRegular16(context),
      ),
      trailing: isActive
          ? Container(
              width: 3.26,
              color: const Color(0xff4eb7f2),
            )
          : null,
    );
  }
}
