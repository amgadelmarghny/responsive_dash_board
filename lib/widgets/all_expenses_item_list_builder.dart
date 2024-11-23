import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListBuilder extends StatelessWidget {
  const AllExpensesItemListBuilder({super.key});
  static const List<AllExpensesItemModel> _allExpensesItems = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      name: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      name: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      name: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        _allExpensesItems.length,
        (index) {
          return Expanded(
            child: Padding(
              padding: index == 1
                  ? const EdgeInsetsDirectional.symmetric(horizontal: 14)
                  : EdgeInsets.zero,
              child: AllExpensesItem(
                itemModel: _allExpensesItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
