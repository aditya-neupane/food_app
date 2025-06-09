import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TabIndexControlelr extends GetxController {
  RxInt _tabIndex = 0.obs;
  int get tabIndex => _tabIndex.value;

  set tabIndex(int newValue) {
    _tabIndex.value = newValue;
    update();
  }
}
