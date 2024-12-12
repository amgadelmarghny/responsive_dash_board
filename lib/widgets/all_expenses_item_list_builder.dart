import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListBuilder extends StatefulWidget {
  const AllExpensesItemListBuilder({super.key});

  @override
  State<AllExpensesItemListBuilder> createState() =>
      _AllExpensesItemListBuilderState();
}

class _AllExpensesItemListBuilderState
    extends State<AllExpensesItemListBuilder> {
  int isSelected = 0;
  final List<AllExpensesItemModel> _allExpensesItems = const [
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
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              onTap(0);
            },
            child: AllExpensesItem(
              itemModel: _allExpensesItems[0],
              isSelected: isSelected == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              onTap(1);
            },
            child: AllExpensesItem(
              itemModel: _allExpensesItems[1],
              isSelected: isSelected == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              onTap(2);
            },
            child: AllExpensesItem(
              itemModel: _allExpensesItems[2],
              isSelected: isSelected == 2,
            ),
          ),
        ),
      ],
    );
  }

  void onTap(int index) {
    setState(() {
      isSelected = index;
    });
  }
}
