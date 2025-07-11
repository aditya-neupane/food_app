import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/views/entrypoint.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shimmer/main.dart';

Widget defaultHome = MainSreen();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'foodly',
          theme: ThemeData(
              scaffoldBackgroundColor: kOffWhite,
              iconTheme: IconThemeData(color: kDark),
              primarySwatch: Colors.grey),
          home: defaultHome,
        );
      },
    );
  }
}
