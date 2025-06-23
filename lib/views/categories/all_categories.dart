import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/common/app_style.dart';
import 'package:food_app/common/reusable_text.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/constants/uidata.dart';
import 'package:food_app/views/home/widgets/category_widget.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: "Categories",
          style: appStyle(12, kGray, FontWeight.w600),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        height: height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(categories.length, (i) {
            var category = categories[i];
            return ListTile(
              leading: CircleAvatar(
                radius: 18.r,
                backgroundColor: kGrayLight,
                child: Image.network(
                  category['imageUrl'],
                  fit: BoxFit.contain,
                ),
              ),
              title: ReusableText(
                text: category['title'],
                style: appStyle(12, kGray, FontWeight.normal),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: kGray,
                size: 15.r,
              ),
            );
          }),
        ),
      ),
    );
  }
}
