import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_finance/providers.dart';
import 'package:on_finance/widgets/stock_elements.dart';

import 'candlestick_chart.dart';
import 'line_chart.dart';

class ChartSection extends ConsumerWidget {
  const ChartSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isLine = ref.watch(lineProvider);
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: isLine ? 450.h : 550.h,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
        ),
        // Add chart using fl_chart
        isLine ? const LineChartWidget() : const CandleStickChart(),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isLine ? const DetailBar() : const CandleStickBar(),
                const TimeBar(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
