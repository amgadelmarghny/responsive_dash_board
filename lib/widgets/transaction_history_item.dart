import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.transactionHistoryItemModel});
  final TransactionHistoryItemModel transactionHistoryItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(transactionHistoryItemModel.title),
        titleTextStyle: AppStyles.styleBold16(context),
        subtitle: Text(transactionHistoryItemModel.date),
        subtitleTextStyle: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xffAAAAAA)),
        trailing: Text(
          transactionHistoryItemModel.income,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: isIncome(transactionHistoryItemModel.transactionType)
                ? const Color(0xff7DD97B)
                : Colors.red,
          ),
        ),
      ),
    );
  }

  bool isIncome(TransactionType type) => type == TransactionType.income;
}
