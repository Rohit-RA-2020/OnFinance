import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TechnicalIndicators extends StatelessWidget {
  const TechnicalIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Technical Indicators',
            style: TextStyle(
              fontSize: 20.sp,
              color: const Color(0xFF3455FF),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.h),
          const TechnicalElements(
            title: 'Cumulative Market Sentiment',
            value: '62.42',
            desc:
                'This measures the sentiment of the investors for that particular stock or boin based on all the news articles, blogs, research papers, financial content featuring it.',
          ),
          const TechnicalElements(
            title: 'Relative Strength Index (RSI)',
            value: '37.88',
            desc:
                'This measures the price movement of the securities, tell us if the stock or coin is overbought (above 70) or oversold (below 30)',
          ),
          const TechnicalElements(
            title: 'Volatility',
            value: '0.54',
            desc:
                'This measures how much the stock or coin price is moving in any of the directions (upwards, downwards or directional) with respect to time.',
          ),
        ],
      ),
    );
  }
}

class TechnicalElements extends StatelessWidget {
  const TechnicalElements({
    required this.title,
    required this.value,
    required this.desc,
    super.key,
  });

  final String title;
  final String value;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0.sp, bottom: 10.0.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18.sp),
              ),
              Text(
                value,
                style: TextStyle(
                  color: const Color(0xFF45FFDE),
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
        ),
        Text(
          desc,
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xFF5F5F68),
          ),
        )
      ],
    );
  }
}
