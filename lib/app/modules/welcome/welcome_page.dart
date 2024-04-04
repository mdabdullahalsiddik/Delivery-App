import 'package:delivery_app/app/core/widgets/custom_button.dart';
import 'package:delivery_app/utils/colors.dart';
import 'package:delivery_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Gap(20),
                  SizedBox(
                    height: 320,
                    child: PageView(
                      children: [
                        Image.asset(
                          ImageUrl.welcomeImage,
                          //  height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle_sharp,
                        size: 10,
                        color: AllColors.redColor,
                      ),
                      Gap(2),
                      Icon(
                        Icons.circle_sharp,
                        size: 10,
                        color: AllColors.greyColor,
                      ),
                      Gap(2),
                      Icon(
                        Icons.circle_sharp,
                        size: 10,
                        color: AllColors.greyColor,
                      ),
                    ],
                  ),
                  const Gap(5),
                  Text(
                    textAlign: TextAlign.center,
                    "Get started on \nOrdering your Food",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: AllColors.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Gap(5),
                  Text(
                    textAlign: TextAlign.center,
                    "Please create an account or sign in to \nyour existing account to start parcel delivery.",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AllColors.blackColor,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        cardColor: Colors.red.shade50,
                        textColor: AllColors.redColor,
                        width: MediaQuery.of(context).size.width / 2.5,
                        text: "Skip",
                        onTap: () {},
                      ),
                      CustomButton(
                        width: MediaQuery.of(context).size.width / 2.5,
                        text: "Next",
                        onTap: () => controller.next(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
