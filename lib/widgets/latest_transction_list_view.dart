import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({
    super.key,
  });

  static const List<UserModel> _userModelList = [
    UserModel(
        image: Assets.imagesAvatar1,
        name: 'Madrani Andi',
        email: 'madraniadi20@gmail'),
    UserModel(
        image: Assets.imagesAvatar2,
        name: 'Josh Nunito',
        email: 'joshnunito@gmail.com'),
    UserModel(
        image: Assets.imagesAvatar3,
        name: 'Madrani Andi',
        email: 'madraniadi10@gmail'),
    UserModel(
        image: Assets.imagesAvatar1,
        name: 'Josh Nunito',
        email: 'joshnunito@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _userModelList
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userModel: e)),
            )
            .toList(),
      ),
    );
  }
}
