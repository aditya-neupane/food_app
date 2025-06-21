import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/common/app_style.dart';
import 'package:food_app/common/reusable_text.dart';
import 'package:food_app/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 22.r,
                  backgroundColor: kSecondary,
                  child: Image.network(
                      "https://www.shutterstock.com/image-photo/smiling-african-american-millennial-businessman-600nw-1437938108.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 6.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                          text: "Deliver to",
                          style: appStyle(13, kSecondary, FontWeight.w600)),
                      SizedBox(
                        width: width * 0.65,
                        child: Text("16763 AVE N, Playmouth",
                            overflow: TextOverflow.ellipsis,
                            style: appStyle(11, kGrayLight, FontWeight.normal)),
                      ),
                    ],
                  ),
                ),
                Text(
                  getTimeOfTheDay(),
                  style: const TextStyle(fontSize: 35),
                ),
              ],
            ),
            // Text(
            //   getTimeOfTheDay(),
            //   style: const TextStyle(fontSize: 35),
            // ),
          ],
        ),
      ),
    );
  }

  String getTimeOfTheDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 0 && hour < 12) {
      return ' ☀️ ';
    } else if (hour >= 12 && hour < 16) {
      return ' ⛅ ';
    } else {
      return ' 🌙 ';
    }
  }
}
