import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int isChoose = 0;
  @override
  Widget build(BuildContext context) {
    final List<DrawerItemModel> drawerItems = [
      const DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
      const DrawerItemModel(
          image: Assets.imagesMyTransctions, title: 'My Transaction'),
      const DrawerItemModel(
          image: Assets.imagesStatistics, title: 'Statistics'),
      const DrawerItemModel(
          image: Assets.imagesWalletAccount, title: 'Wallet Account'),
      const DrawerItemModel(
          image: Assets.imagesMyInvestments, title: 'My Investments'),
    ];
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              isChoose = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: isChoose == index,
            ),
          ),
        );
      },
    );
  }
}
