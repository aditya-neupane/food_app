import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/common/custom_appbar.dart';
import 'package:food_app/common/custom_container.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/views/home/widgets/category_list.dart';

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
        children: [CategoryList()],
      ))),
    );
  }
}
