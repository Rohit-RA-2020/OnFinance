import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_finance/widgets/stock_elements.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400.h,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DetailBar(),
                TimeBar(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
