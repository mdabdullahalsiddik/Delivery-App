import 'package:get/get.dart';

import 'parcel_controller.dart';

class ParcelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ParcelController>(
      () => ParcelController(),
    );
  }
}
