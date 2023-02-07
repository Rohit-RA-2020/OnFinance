import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PortfolioExpenses extends StatefulWidget {
  const PortfolioExpenses({super.key});

  @override
  State<PortfolioExpenses> createState() => _PortfolioExpensesState();
}

class _PortfolioExpensesState extends State<PortfolioExpenses> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 366.sp,
        height: isExpanded ? 180.sp : 155.h,
        decoration: BoxDecoration(
          color: const Color(0xFF070707),
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 16.0.sp, left: 20.0.sp, right: 19.0.sp, bottom: 16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Portfolio Expenses',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFF8B545),
                    ),
                  ),
                  Text(
                    '₹ 14,69,073 ',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Color(0xFF15151B),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 21.0.sp, right: 19.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'INVESTED',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF61616A),
                    ),
                  ),
                  Text(
                    'QUANTITY',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF61616A),
                    ),
                  ),
                  Text(
                    'BROKER',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF61616A),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 21.0.sp, right: 19.0.sp, top: 11.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '₹6480',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  isExpanded ? const Spacer() : const SizedBox.shrink(),
                  Text(
                    '0.5',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  isExpanded
                      ? Text(
                          'Ethereum chain',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        )
                      : const SizedBox.shrink(),
                  SizedBox(width: 5.sp),
                  CircleAvatar(
                    radius: 7.sp,
                    backgroundColor: Colors.white,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsJjcUPNCDaQYUFy42i2JUM75yRNT8BShJ_gUgSd60EkqYZ4ZWLbzM1EK4g-SDlXlN-wc&usqp=CAU',
                      height: 7.h,
                      width: 7.w,
                    ),
                  )
                ],
              ),
            ),
            isExpanded
                ? Padding(
                    padding: EdgeInsets.only(
                        left: 21.0.sp, right: 19.0.sp, top: 7.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '₹89870',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        isExpanded ? const Spacer() : const SizedBox.shrink(),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        isExpanded
                            ? Text(
                                'Ethereum chain',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              )
                            : const SizedBox.shrink(),
                        SizedBox(width: 5.sp),
                        CircleAvatar(
                          radius: 7.sp,
                          backgroundColor: Colors.white,
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsJjcUPNCDaQYUFy42i2JUM75yRNT8BShJ_gUgSd60EkqYZ4ZWLbzM1EK4g-SDlXlN-wc&usqp=CAU',
                            height: 7.h,
                            width: 7.w,
                          ),
                        )
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
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
