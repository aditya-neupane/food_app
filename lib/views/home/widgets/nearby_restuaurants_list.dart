import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/constants/uidata.dart';
import 'package:food_app/views/home/widgets/restuarant_widget.dart';

class NearbyRestuaurants extends StatelessWidget {
  const NearbyRestuaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194.h,
      padding: EdgeInsets.only(
        left: 12.w,
        top: 10.h,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var restaurant = restaurants[i];
          return RestuarantWidget(
              image: restaurant['imageUrl'],
              title: restaurant['imageUrl'],
              time: restaurant['time'],
              logo: restaurant['logoUrl'],
              rating: restaurant['ratingCount']);
        }),
      ),
    );
  }
}
