import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({
    super.key,
  });

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  bool checkBox1 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  bool checkBox4 = false;
  bool checkBox5 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17.0, top: 20.0, right: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Indicators',
                style: TextStyle(
                  color: const Color(0xFF98B5FF),
                  fontSize: 20.sp,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 18,
                backgroundColor: const Color(0xFF2A2A35),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Color(0xFFFFFCFC),
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(
            color: Color(0xFF26262F),
            thickness: 1,
            endIndent: 0,
            indent: 0,
          ),
          Container(
            height: 33.sp,
            width: 78.8.sp,
            decoration: const BoxDecoration(
              color: Color(0xFF141418),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'MX',
                  style: TextStyle(
                    color: const Color(0xFF3455FF),
                    fontSize: 18.sp,
                  ),
                ),
                Icon(
                  Icons.close,
                  color: const Color(0xFF2E2E32),
                  size: 18.sp,
                ),
              ],
            ),
          ),
          const SizedBox(height: 27),
          optionMethod(checkBox1, () {
            setState(() {
              checkBox1 = !checkBox1;
            });
          }),
          SizedBox(height: 18.sp),
          Row(
            children: [
              SizedBox(width: 35.sp),
              GestureDetector(
                onTap: () {
                  setState(() {
                    checkBox2 = !checkBox2;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 20.sp,
                  width: 20.sp,
                  decoration: BoxDecoration(
                    color: checkBox2
                        ? const Color(0xFF3E68FA)
                        : Colors.transparent,
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: checkBox2
                            ? Colors.transparent
                            : const Color(0xFF4A4A4A),
                        width: 1.5,
                      ),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: checkBox2 ? Colors.white : const Color(0xFF4A4A4A),
                      size: 14.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 9.sp),
              Text(
                '10 day',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(width: 30.sp),
              GestureDetector(
                onTap: () {
                  setState(() {
                    checkBox3 = !checkBox3;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 20.sp,
                  width: 20.sp,
                  decoration: BoxDecoration(
                    color: checkBox3
                        ? const Color(0xFF3E68FA)
                        : Colors.transparent,
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: checkBox3
                            ? Colors.transparent
                            : const Color(0xFF4A4A4A),
                        width: 1.5,
                      ),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: checkBox3 ? Colors.white : const Color(0xFF4A4A4A),
                      size: 14.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 9.sp),
              Text(
                '30 day',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              )
            ],
          ),
          SizedBox(height: 35.h),
          optionMethod(checkBox4, () {
            setState(() {
              checkBox4 = !checkBox4;
            });
          }),
          SizedBox(height: 27.h),
          optionMethod(
            checkBox5,
            () {
              setState(() {
                checkBox5 = !checkBox5;
              });
            },
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // Add Two ElevatedButtons
                SizedBox(
                  height: 68.sp,
                  width: 170.sp,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1D1D24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    child: Text(
                      'Reset',
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 68.sp,
                  width: 170.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    child: Text(
                      'Apply',
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row optionMethod(bool checkBox, Function() onTapp) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTapp,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 20.sp,
            width: 20.sp,
            decoration: BoxDecoration(
              color: checkBox ? const Color(0xFF3E68FA) : Colors.transparent,
              border: Border.fromBorderSide(
                BorderSide(
                  color:
                      checkBox ? Colors.transparent : const Color(0xFF4A4A4A),
                  width: 1.5,
                ),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.check,
                color: checkBox ? Colors.white : const Color(0xFF4A4A4A),
                size: 14.sp,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Container(
          height: 38.sp,
          width: 322.17.h,
          decoration: const BoxDecoration(
            color: Color(0xFF18181E),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
            border: Border.fromBorderSide(
              BorderSide(
                color: Color(0xFF282830),
                width: 1.5,
              ),
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: 15.sp),
              Text(
                'MA-Moving Average',
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 16.sp,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_drop_up,
                color: Color(0xFF4A4A4A),
              ),
              SizedBox(width: 14.sp),
            ],
          ),
        ),
      ],
    );
  }
}
