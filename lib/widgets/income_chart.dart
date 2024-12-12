import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeChartIndex = -1;
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartSectionDataList = [
      PieChartSectionData(
        showTitle: false,
        color: const Color(0xff208CC8),
        value: 40,
        radius: activeChartIndex == 0 ? 50 : 40,
      ),
      PieChartSectionData(
        showTitle: false,
        color: const Color(0xff4EB7F2),
        value: 25,
        radius: activeChartIndex == 1 ? 50 : 40,
      ),
      PieChartSectionData(
        showTitle: false,
        color: const Color(0xff064061),
        value: 20,
        radius: activeChartIndex == 2 ? 50 : 40,
      ),
      PieChartSectionData(
        showTitle: false,
        color: const Color(0xffE2DECD),
        value: 22,
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
