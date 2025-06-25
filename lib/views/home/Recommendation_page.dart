import 'package:flutter/material.dart';
import 'package:food_app/common/app_style.dart';
import 'package:food_app/common/reusable_text.dart';
import 'package:food_app/constants/constants.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(
            text: "Recommendations",
            style: appStyle(18, kGray, FontWeight.w600)),
        // centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'All Recommendations',
          // style:  TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
