import 'package:delivery_app/app/routes/home_routes.dart';
import 'package:delivery_app/app/routes/navigator_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SingInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var forky = GlobalKey<FormState>();
  var passwordValidator = true.obs;
  singIn() {
    if (forky.currentState!.validate()) {
      if (emailController.text.isNotEmpty ||
          passwordController.text.isNotEmpty) {
        Get.toNamed(NavigatorRoutes.navigator);
      }
    }
  }

  setPasswordValidator() {
    passwordValidator.value = !passwordValidator.value;
  }
}
