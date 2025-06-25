import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/common/custom_appbar.dart';
import 'package:food_app/common/custom_container.dart';
import 'package:food_app/common/heading.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/views/home/Recommendation_page.dart';
import 'package:food_app/views/home/all_fastest_foods_page.dart';
import 'package:food_app/views/home/all_nearby_retuarants.dart';
import 'package:food_app/views/home/widgets/category_list.dart';
import 'package:food_app/views/home/widgets/food_list.dart';
import 'package:food_app/views/home/widgets/nearby_restuaurants_list.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomAppbar()),
      body: SafeArea(
          child: CustomContainer(
              contaienrContent: Column(
        children: [
          const CategoryList(),
          Heading(
            text: "Nearby Restuarants",
            onTap: () {
              Get.to(
                () => const AllNearbyRestuarants(),
                transition: Transition.cupertino,
                duration: const Duration(milliseconds: 900),
              );
            },
          ),
          const NearbyRestuaurants(),
          Heading(
            text: "Try Something New",
            onTap: () {
              Get.to(
                () => const RecommendationsPage(),
                transition: Transition.cupertino,
                duration: const Duration(milliseconds: 900),
              );
            },
          ),
          const FoodsList(),
          Heading(
            text: "food closer to you",
            onTap: () {
              Get.to(
                () => const AllFastestFoods(),
                transition: Transition.cupertino,
                duration: const Duration(milliseconds: 900),
              );
            },
          ),
          const FoodsList(),
        ],
      ))),
    );
  }
}
