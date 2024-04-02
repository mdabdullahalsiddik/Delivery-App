import 'package:delivery_app/app/core/widgets/custom_buttom.dart';
import 'package:delivery_app/uitils/images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        color: Colors.red,
                      ),
                      Gap(2),
                      Icon(
                        Icons.circle_sharp,
                        size: 10,
                        color: Colors.grey,
                      ),
                      Gap(2),
                      Icon(
                        Icons.circle_sharp,
                        size: 10,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const Gap(5),
                  Text(
                    textAlign: TextAlign.center,
                    "Get started on \nOrdering your Food",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Gap(5),
                  Text(
                    textAlign: TextAlign.center,
                    "Please create an account or sign in to \nyour existing account to start parcel delivery.",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          CustomButton(
            cardColor: Colors.white,
            textColor: const Color(0xffbacef232f),
            width: MediaQuery.of(context).size.width / 2,
            text: "Skip",
            onTap: () {},
          ),
          CustomButton(
            width: MediaQuery.of(context).size.width / 2,
            text: "Next",
            onTap: () => controller.next(),
          ),
        ],
      ),
    );
  }
}
