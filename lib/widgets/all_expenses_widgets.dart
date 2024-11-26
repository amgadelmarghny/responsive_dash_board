import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_list_builder.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListBuilder(),
        ],
      ),
    );
  }
}
