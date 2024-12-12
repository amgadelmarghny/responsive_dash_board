import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart_with_details.dart';
import 'package:responsive_dash_board/widgets/income_item_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfigs.desktopSizeWidth && width < 1750
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: IncomeChartWithDetails(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(flex: 2, child: IncomeItemsListView())
            ],
          );
  }
}
