
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedContent extends StatelessWidget {
  const ExpandedContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0.sp),
      child: Column(
        children: [
          const Divider(color: Color(0xFF16161D)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '64% ',
                style: TextStyle(
                  fontSize: 40.sp,
                  color: const Color(0xFF38E1BB),
                ),
              ),
              Text(
                'Buy Rating',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: const Color(0xFF38E1BB),
                ),
              ),
            ],
          ),
          const Divider(color: Color(0xFF16161D)),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0.sp,
              right: 30.0.sp,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Bulls',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF515158),
                  ),
                ),
                Text(
                  'Historical Accuracy',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF515158),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const TopTiles(
            imageUrl:
                'https://www.gurpreetsaluja.com/wp-content/uploads/2020/09/HDFC-LOGO.png',
            name: 'HDFC Asset Mngt. Co',
            accuracy: '86%',
          ),
          SizedBox(height: 8.0.sp),
          const TopTiles(
            imageUrl:
                'https://www.itijobs.co/wp-content/uploads/2021/04/images-87.jpeg',
            name: 'Solar Industries',
            accuracy: '92%',
          ),
          SizedBox(height: 24.0.sp),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0.sp,
              right: 30.0.sp,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Bulls',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF515158),
                  ),
                ),
                const Spacer()
              ],
            ),
          ),
          const SizedBox(height: 10),
          const TopTiles(
            imageUrl:
                'https://companieslogo.com/img/orig/UNITDSPR.BO_BIG-d8914f2f.png?t=1611166043',
            name: 'United Spirits',
            accuracy: '86%',
          ),
          SizedBox(height: 8.0.sp),
          const TopTiles(
            imageUrl:
                'https://www.equitybulls.com/equitybullsadmin/uploads/Home%20First%20Finance%20Company%20India%20Limited%20Logo%202.png',
            name: 'Home First Finance',
            accuracy: '92%',
          ),
        ],
      ),
    );
  }
}

class TopTiles extends StatelessWidget {
  const TopTiles({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.accuracy,
  });

  final String imageUrl;
  final String name;
  final String accuracy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.0.sp,
        right: 30.0.sp,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 8.sp,
            child: Image.network(
              imageUrl,
              height: 10.sp,
              width: 10.sp,
            ),
          ),
          SizedBox(width: 8.0.sp),
          Text(
            name,
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFFB8B8B8),
            ),
          ),
          const Spacer(),
          Text(
            accuracy,
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFFB8B8B8),
            ),
          ),
        ],
      ),
    );
  }
}
