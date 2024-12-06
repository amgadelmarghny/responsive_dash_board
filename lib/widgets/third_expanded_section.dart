import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_anf_transaction_history_section.dart';

class ThirdExpandedSection extends StatelessWidget {
  const ThirdExpandedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardAndTransactionHistorySection(),
        SizedBox(
          height: 20,
        ),
        IncomeSection(),
      ],
    );
  }
}
