import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemheader extends StatelessWidget {
  const AllExpensesItemheader({
    super.key,
    required this.image,
    required this.isActive,
  });

  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: isActive
                ? Colors.white.withOpacity(0.10000000149011612)
                : const Color(0xffFAFAFA),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                isActive ? Colors.white : const Color(0xff4EB7F2),
                BlendMode.srcIn),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: isActive ? Colors.white : const Color(0xff064061),
        )
      ],
    );
  }
}
