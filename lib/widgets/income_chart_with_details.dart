import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class IncomeChartWithDetails extends StatefulWidget {
  const IncomeChartWithDetails({super.key});

  @override
  State<IncomeChartWithDetails> createState() => _IncomeChartWithDetailsState();
}

class _IncomeChartWithDetailsState extends State<IncomeChartWithDetails> {
  int activeChartIndex = -1;
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartSectionDataList = [
      PieChartSectionData(
        color: const Color(0xff208CC8),
        value: 40,
        titlePositionPercentageOffset: activeChartIndex == 0 ? 1.5 : null,
        title: activeChartIndex == 0 ? 'Design service' : '40%',
        titleStyle: AppStyles.styleMedium16(context)
            .copyWith(color: activeChartIndex == 0 ? null : Colors.white),
        radius: activeChartIndex == 0 ? 50 : 40,
      ),
      PieChartSectionData(
        color: const Color(0xff4EB7F2),
        value: 25,
        titlePositionPercentageOffset: activeChartIndex == 1 ? 2.3 : null,
        title: activeChartIndex == 1 ? 'Design product' : '25%',
        titleStyle: AppStyles.styleMedium16(context)
            .copyWith(color: activeChartIndex == 1 ? null : Colors.white),
        radius: activeChartIndex == 1 ? 50 : 40,
      ),
      PieChartSectionData(
        color: const Color(0xff064061),
        value: 20,
        titlePositionPercentageOffset: activeChartIndex == 2 ? 1.4 : null,
        title: activeChartIndex == 2 ? 'Product royalty' : '20%',
        titleStyle: AppStyles.styleMedium16(context)
            .copyWith(color: activeChartIndex == 2 ? null : Colors.white),
        radius: activeChartIndex == 2 ? 50 : 40,
      ),
      PieChartSectionData(
        color: const Color(0xffE2DECD),
        value: 22,
        titlePositionPercentageOffset: activeChartIndex == 3 ? 1.4 : null,
        title: activeChartIndex == 3 ? 'Other' : '22%',
        titleStyle: AppStyles.styleMedium16(context)
            .copyWith(color: activeChartIndex == 3 ? null : Colors.white),
        radius: activeChartIndex == 3 ? 50 : 40,
      ),
    ];

    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            touchCallback: (p0, pieTouchResponse) {
              activeChartIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sections: pieChartSectionDataList,
        ),
      ),
    );
  }
}
