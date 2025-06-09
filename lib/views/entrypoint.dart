// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:food_app/constants/constants.dart';
import 'package:food_app/controllers/tab_index_controlelr.dart';
import 'package:food_app/views/cart/cart_page.dart';
import 'package:food_app/views/home/home_page.dart';
import 'package:food_app/views/profile/profile_page.dart';
import 'package:food_app/views/search/search_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MainSreen extends StatelessWidget {
  MainSreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexControlelr());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pageList[controller.tabIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context).copyWith(canvasColor: kPrimary),
                    child: BottomNavigationBar(
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        unselectedIconTheme:
                            const IconThemeData(color: Colors.black),
                        selectedIconTheme:
                            const IconThemeData(color: kSecondary),
                        onTap: (value) {
                          controller.tabIndex = value;
                          // controller.tabIndex(value); // Update the tab index
                        },
                        currentIndex: controller.tabIndex,
                        items: [
                          BottomNavigationBarItem(
                            icon: controller.tabIndex == 0
                                ? Icon(AntDesign.appstore1)
                                : Icon(AntDesign.appstore_o),
                            label: 'Home',
                          ),
                          const BottomNavigationBarItem(
                            icon: Icon(Icons.search),
                            label: 'Search',
                          ),
                          const BottomNavigationBarItem(
                            icon: Badge(
                                label: Text('1'),
                                child: Icon(FontAwesome.opencart)),
                            label: 'Cart',
                          ),
                          BottomNavigationBarItem(
                            icon: controller.tabIndex == 3
                                ? Icon(FontAwesome.user_circle)
                                : Icon(FontAwesome.user_circle),
                            label: 'Profile',
                          ),
                        ])),
              )
            ],
          ),
        ));
  }
}
