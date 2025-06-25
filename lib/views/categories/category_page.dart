import 'package:flutter/material.dart';
import 'package:food_app/constants/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Category Page'),
        backgroundColor: kOffWhite,
      ),
      body: Center(
        child: Text(
          'Category Page',
          // style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
