import 'package:flutter/material.dart';
import 'package:food_app/common/app_style.dart';
import 'package:food_app/common/reusable_text.dart';
import 'package:food_app/constants/constants.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(
            text: "FastestFoods ", style: appStyle(18, kGray, FontWeight.w600)),
        // centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'All FastestFoods',
          // style:  TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
