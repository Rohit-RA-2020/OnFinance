import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../providers.dart';

class TimeBar extends ConsumerWidget {
  const TimeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Container(
          height: 49.sp,
          width: 309.sp,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 23.sp,
                width: 44.sp,
                decoration: BoxDecoration(
                  color: const Color(0xFF3455FF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    '1H',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
              Text(
                '1D',
                style: TextStyle(
                  color: const Color(0xFF434343),
                  fontSize: 14.sp,
                ),
              ),
              Text(
                '1W',
                style: TextStyle(
                  color: const Color(0xFF434343),
                  fontSize: 14.sp,
                ),
              ),
              Text(
                '1M',
                style: TextStyle(
                  color: const Color(0xFF434343),
                  fontSize: 14.sp,
                ),
              ),
              Text(
                '5Y',
                style: TextStyle(
                  color: const Color(0xFF434343),
                  fontSize: 14.sp,
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            ref.read(lineProvider.notifier).state =
                !ref.read(lineProvider.notifier).state;
          },
          child: Container(
            height: 49.sp,
            width: 49.sp,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            child: Center(
              child: ref.watch(lineProvider)
                  ? Row(
                      children: [
                        Icon(
                          Icons.candlestick_chart_outlined,
                          color: Colors.red,
                          size: 20.sp,
                        ),
                        Icon(
                          Icons.candlestick_chart_outlined,
                          color: Colors.green,
                          size: 20.sp,
                        ),
                      ],
                    )
                  : Icon(
                      Icons.stacked_line_chart,
                      color: Colors.green,
                      size: 20.sp,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class DetailBar extends StatelessWidget {
  const DetailBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Container(
          height: 26.sp,
          width: 85.sp,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_upward,
                color: Colors.green,
                size: 16.sp,
              ),
              Text(
                '2.79%',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 26.sp,
          width: 123.sp,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              'Ascending Angle',
              style: TextStyle(color: const Color(0xFF98B5FF), fontSize: 14.sp),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 26.sp,
          width: 110.sp,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              'High Exposure',
              style: TextStyle(color: Colors.red, fontSize: 14.sp),
            ),
          ),
        ),
      ],
    );
  }
}

class CandleStickBar extends StatelessWidget {
  const CandleStickBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Container(
          height: 26.sp,
          width: 85.sp,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_upward,
                color: Colors.green,
                size: 16.sp,
              ),
              Text(
                '2.79%',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 26.sp,
          width: 38.sp,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              'MA',
              style: TextStyle(color: const Color(0xFF98B5FF), fontSize: 14.sp),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 26.sp,
          width: 38.sp,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              'RSI',
              style: TextStyle(color: Colors.red, fontSize: 14.sp),
            ),
          ),
        ),
      ],
    );
  }
}
