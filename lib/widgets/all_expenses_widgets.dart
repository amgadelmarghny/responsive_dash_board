import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/range_options_button.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // All Expenses header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All Expenses',
                style: AppStyles.styleSemiBold20(context),
              ),
              const RangeOptionsButton(),
            ],
          ),
        ],
      ),
    );
  }
}
