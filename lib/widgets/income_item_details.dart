import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeItemsListView extends StatelessWidget {
  const IncomeItemsListView({super.key});

  static const items = [
    IncomeItemDetailsModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    IncomeItemDetailsModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    IncomeItemDetailsModel(
        color: Color(0xFF064060), title: 'Product royalty', value: '%20'),
    IncomeItemDetailsModel(
        color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          items.map((e) => IncomeItemDetails(itemDetailsModel: e)).toList(),
    );
  }
}
