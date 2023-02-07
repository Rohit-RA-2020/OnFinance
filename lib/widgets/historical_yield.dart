import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoricalYeild extends StatelessWidget {
  const HistoricalYeild({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 426.sp,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF070707),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 32.0,
            left: 27,
            right: 10.0,
            bottom: 41.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'If You would have Invested',
                style: TextStyle(
                  color: const Color(0xFF8D8D8D),
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Text(
                    '\$100000',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Slider(
                    thumbColor: Colors.white,
                    activeColor: const Color(0xFF3455FF),
                    value: 0.25,
                    onChanged: (value) {},
                  ),
                ],
              ),
              SizedBox(height: 19.h),
              Text(
                'For previous',
                style: TextStyle(
                  color: const Color(0xFF8D8D8D),
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Text(
                    '1 year',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Slider(
                    thumbColor: Colors.white,
                    activeColor: const Color(0xFF3455FF),
                    value: 0.25,
                    onChanged: (value) {},
                  ),
                ],
              ),
              SizedBox(height: 19.h),
              Text(
                'You would have',
                style: TextStyle(
                  color: const Color(0xFF8D8D8D),
                  fontSize: 18.h,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '\$1120.78',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '1205.67 MATIC',
                    style: TextStyle(
                      color: const Color(0xFF3455FF),
                      fontSize: 16.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 19.h),
              Container(
                height: 29.68,
                width: 309.68,
                decoration: BoxDecoration(
                  color: const Color(0xFF0E0E0E),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 92.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3455FF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/polygon.png'),
                          Text(
                            'MATIC',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.h,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.network(
                              'https://thumbs.dreamstime.com/b/white-bitcoin-sign-icon-black-background-crypto-currency-symbol-vector-illustration-102991678.jpg',
                              height: 14.h,
                              width: 14.w,
                            ),
                          ),
                          Text(
                            'BTC',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.h,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.network(
                                'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/ethereum-eth-icon.png',
                                height: 14.h,
                                width: 14.w,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'ETH',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.h,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
