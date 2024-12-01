import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/dots_page_view.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          controller: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        CardDots(pageController: pageController)
      ],
    );
  }
}
