import 'package:get/get.dart';

class AppController extends GetxController {
  var selectedScreenIndex = 0.obs;

  void changeSelectedScreen(int index) {
    selectedScreenIndex.value = index;
  }
}
