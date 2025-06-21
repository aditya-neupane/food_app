// ignore_for_file: prefer_final_fields, unused_element

import 'package:get/get.dart';

class CategoryController extends GetxController {
  RxString _category = ''.obs;
  String get categoryValue => _category.value;
  set updateCategory(String Value) {
    _category.value = Value;
    update();
  }

  RxString _title = ''.obs;
  String get _titleValue => _category.value;
  set updateTitle(String Value) {
    _title.value = Value;
    update();
  }
}
