import 'package:delivery_app/app/routes/sing_in_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  void next() {
    Get.toNamed(SingInRoutes.singIn);
  }
}
