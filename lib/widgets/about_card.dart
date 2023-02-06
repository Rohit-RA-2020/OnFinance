import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({
    super.key,
  });

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
            'About MATIC',
            style: TextStyle(
              fontSize: 20.sp,
              color: const Color(0xFF3455FF),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.h),
          const AboutPageElement(title: 'Market Cap', value: '65,195 Cr.'),
          const Divider(),
          const AboutPageElement(
              title: 'Revenue', value: '789,112.84 Cr.', loss: '-50.2%'),
          const Divider(),
          const AboutPageElement(title: 'P/E Ratio', value: '30.2'),
          const Divider(),
          const AboutPageElement(
              title: 'Profit', value: '1098.48 Cr.', loss: '-80.2%'),
          const Divider(),
          const AboutPageElement(title: 'Divident Yield', value: '1.92'),
          const Divider(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class AboutPageElement extends StatelessWidget {
  const AboutPageElement({
    required this.title,
    required this.value,
    this.loss,
    super.key,
  });

  final String title;
  final String value;
  final String? loss;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF5F5F68),
              fontSize: 18.sp,
            ),
          ),
          const Expanded(child: SizedBox()),
          loss != null
              ? Container(
                  margin: EdgeInsets.only(right: 8.w),
                  width: 53,
                  height: 19,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1A),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      loss!,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          Text(
            value,
            style: TextStyle(
              fontSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
