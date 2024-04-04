import 'package:delivery_app/utils/colors.dart';
import 'package:delivery_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigator_controller.dart';

class NavigatorPage extends GetView<NavigatorController> {
  const NavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigatorController>(
      builder: (controller) {
        return Scaffold(
          body: controller.pages[controller.selectIndex],
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: AllColors.redColor,
              unselectedItemColor: AllColors.blackColor,
              currentIndex: controller.selectIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                controller.setSelectIndex(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(ImageUrl.dashboardImage),
                  label: "Dashboard",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(ImageUrl.percentageImage),
                  label: "Payment",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(ImageUrl.mouseImage),
                  label: "Parcel",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(ImageUrl.userImage),
                  label: "Profile",
                ),
              ]),
        );
      },
    );
  }
}
