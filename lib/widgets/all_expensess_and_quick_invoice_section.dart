import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widgets.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesWidget(),
        SizedBox(
          height: 15,
        ),
        QuickInvoiceWidget(),
      ],
    );
  }
}
