import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'analyst_expaned_content.dart';

class AnalystRatingCard extends StatefulWidget {
  const AnalystRatingCard({super.key});

  @override
  State<AnalystRatingCard> createState() => _AnalystRatingCardState();
}

class _AnalystRatingCardState extends State<AnalystRatingCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: double.infinity,
        height: isExpanded ? 503.sp : 216.sp,
        decoration: BoxDecoration(
          color: const Color(0xFF070707),
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0.sp),
                    child: Text(
                      'Analyst Ratings',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Icon(
                      Icons.star,
                      size: 20.sp,
                      color: const Color(0xFF38E5BB),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35.sp,
                  width: 130.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: const Color(0xFF303030),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '\$0.94634',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 35.sp,
                  width: 187.sp,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF16161D),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Target Price',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF32323E),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SfSlider(
                min: 0.0,
                max: 4.0,
                interval: 1,
                stepSize: 1,
                showDividers: true,
                showTicks: true,
                showLabels: true,
                inactiveColor: Colors.grey.shade900,
                labelPlacement: LabelPlacement.onTicks,
                edgeLabelPlacement: EdgeLabelPlacement.auto,
                labelFormatterCallback:
                    (dynamic actualValue, String formattedText) {
                  switch (actualValue) {
                    case 0:
                      return 'Strong \nBuy';
                    case 1:
                      return 'Buy';
                    case 2:
                      return 'Hold';
                    case 3:
                      return 'Sell';
                    case 4:
                      return 'Strong \nSell';
                  }
                  return actualValue.toString();
                },
                value: 0,
                onChanged: (dynamic newValue) {},
              ),
            ),
            // make this position always at bottom even if container expands
            isExpanded ? const ExpandedContent() : Container(),
            GestureDetector(
              child: isExpanded
                  ? const Icon(
                      Icons.arrow_drop_up,
                      color: Color(0xFF252531),
                    )
                  : const Icon(Icons.arrow_drop_down, color: Color(0xFF252531)),
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
