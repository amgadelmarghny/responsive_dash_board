import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CardDots extends StatelessWidget {
  const CardDots({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: const ExpandingDotsEffect(
        expansionFactor: 2,
        spacing: 6.0,
        dotWidth: 8.0,
        dotHeight: 8.0,
        radius: 4,
        strokeWidth: 16,
        dotColor: Color(0xffE8E8E8),
        activeDotColor: Color(0xFF4EB7F2),
      ),
    );
  }
}