import 'package:get/get.dart';

import 'navigator_controller.dart';

class NavigatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigatorController());
  }
}
