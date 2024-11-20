import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const UserModel userModel = UserModel(
      image: Assets.imagesAvatar3,
      name: 'Lekan Okeowo',
      email: 'demo@gmail.com',
    );
    return const SizedBox(
      child: Column(
        children: [
          UserInfoListTile(
            userModel: userModel,
          ),
        ],
      ),
    );
  }
}
