import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/constants/constants.dart';

class RestuarantWidget extends StatelessWidget {
  const RestuarantWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.time,
      required this.logo,
      required this.rating,
      this.onTap});

  final String image;
  final String title;
  final String time;
  final String logo;
  final String rating;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: Container(
            width: width * 0.75,
            height: 192.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: kLightWhite,
            ),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: SizedBox(
                          height: 112.h,
                          width: width * 0.8,
                          child: Image.network(
                            image,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Positioned(
                          right: 10.w,
                          top: 10.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.r),
                            child: Container(
                                color: kLightWhite,
                                child: Padding(
                                  padding: EdgeInsets.all(4.h),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50.r),
                                      child: Image.network(
                                        logo,
                                        fit: BoxFit.cover,
                                        width: 20,
                                        height: 20,
                                      )),
                                )),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
