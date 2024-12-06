import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: 24,
      child: Column(
        children: [
          IncomeHeader(),
          Row(
            children: [Expanded(child: IncomeChart())],
          )
        ],
      ),
    );
  }
}
