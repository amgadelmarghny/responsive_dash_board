import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold24(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium20(context)
              .copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
