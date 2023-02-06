import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_finance/widgets/technical_indicator.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'widgets/about_card.dart';
import 'widgets/charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            color: Colors.black,
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBookmarked = false;

  bool isExpanded = false;
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
        title: const Text('Polygon'),
        // Add a line
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            color: Colors.grey.shade800,
            height: 1,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: const Color(0xFF16161C),
              child: IconButton(
                splashRadius: null,
                icon: isBookmarked
                    ? const Icon(
                        Icons.bookmark,
                        color: Colors.yellow,
                      )
                    : const Icon(
                        Icons.bookmark_border,
                      ),
                onPressed: () {
                  setState(() {
                    isBookmarked = !isBookmarked;
                  });
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10.0.sp),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 42.sp,
              width: 166.sp,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3455FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Buy',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 42.sp,
              width: 166.sp,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Sell',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 94.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,

              // make the box corener round
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Image.asset('assets/images/polygon.png'),
              ),
              title: const Text(
                '₹94.634',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'MATIC',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF3455FF),
                ),
              ),
              trailing: SizedBox(
                height: 30.sp,
                width: 92.sp,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Discuss',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        size: 20.sp,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const ChartSection(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: double.infinity,
              height: isExpanded ? 503.sp : 216.sp,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
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
                      enableTooltip: true,
                      showLabels: true,
                      inactiveColor: Colors.grey.shade900,
                      labelPlacement: LabelPlacement.onTicks,
                      edgeLabelPlacement: EdgeLabelPlacement.auto,
                      labelFormatterCallback:
                          (dynamic actualValue, String formattedText) {
                        switch (actualValue) {
                          case 0:
                            return 'Low';
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
                      value: _value,
                      onChanged: (dynamic newValue) {
                        setState(() {
                          _value = newValue;
                        });
                      },
                    ),
                  ),
                  // make this position always at bottom even if container expands
                  const Spacer(),
                  GestureDetector(
                    child: isExpanded
                        ? const Icon(
                            Icons.arrow_drop_up,
                            color: Color(0xFF252531),
                          )
                        : const Icon(Icons.arrow_drop_down,
                            color: Color(0xFF252531)),
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          const AboutCard(),
          const TechnicalIndicators(),
        ],
      ),
    );
  }
}