import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpensessAndQuickInvoiceSection(),
            SizedBox(
              height: 15,
            ),
            MyCardAndTransactionHistorySection(),
            SizedBox(
              height: 15,
            ),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
