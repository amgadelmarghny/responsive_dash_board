import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_item_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const transactionHistoryItemList = [
    TransactionHistoryItemModel(
      title: 'Cash withDrawl',
      date: '13 Apr, 2022 ',
      income: r'$20,129',
      transactionType: TransactionType.withDrawal,
    ),
    TransactionHistoryItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      income: r'$2,000',
      transactionType: TransactionType.income,
    ),
    TransactionHistoryItemModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      income: r'$20,129',
      transactionType: TransactionType.income,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionHistoryItemList
          .map((e) => TransactionHistoryItem(transactionHistoryItemModel: e))
          .toList(),
    );
  }
}
