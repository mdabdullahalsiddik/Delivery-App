import 'package:delivery_app/utils/colors.dart';
import 'package:delivery_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.blackColor,
      body: Center(
        child: Image.asset(
          ImageUrl.logoImage,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
