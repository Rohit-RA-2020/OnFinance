import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_finance/providers.dart';
import 'package:on_finance/widgets/stock_elements.dart';

class ChartSection extends ConsumerWidget {
  const ChartSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: ref.watch(lineProvider) ? 450.h : 550.h,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
        ),
        // Add chart using fl_chart
        const LineCharWidget(),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ref.watch(lineProvider)
                    ? const DetailBar()
                    : const CandleStickBar(),
                const TimeBar(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LineCharWidget extends StatelessWidget {
  const LineCharWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),
            ),
            gridData: FlGridData(
              show: false,
            ),
            backgroundColor: Colors.transparent,
            lineBarsData: [
              LineChartBarData(
                belowBarData: BarAreaData(
                  show: false,
                ),
                shadow: const Shadow(
                  color: Color(0xFF00EB7A),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
                color: const Color(0xFF00EB7A),
                spots: [
                  const FlSpot(0, 10),
                  const FlSpot(5, 15),
                  const FlSpot(10, 10),
                  const FlSpot(15, 8),
                  const FlSpot(20, 12),
                  const FlSpot(25, 5),
                  const FlSpot(30, 16),
                  const FlSpot(35, 20),
                  const FlSpot(40, 18),
                  const FlSpot(45, 22),
                ],
                isCurved: true,
                isStrokeCapRound: true,
                dotData: FlDotData(
                  show: false,
                ),
              ),
            ],
            minY: 0,
          ),
          swapAnimationDuration: const Duration(milliseconds: 250),
        ),
      ),
    );
  }
}
