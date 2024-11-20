import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userModel,
  });
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userModel.image),
        title: Text(
          userModel.name,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userModel.email,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
