import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.only(bottom: 26, right: 24),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: const Color(0xff4EB7Fe),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(right: 18, left: 31, top: 16),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Text(
              '0918 8124 0042 8129',
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
            Text(
              '12/20 - 124',
              style: AppStyles.styleRegular16(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
