import 'package:delivery_app/app/core/widgets/custom_card.dart';
import 'package:delivery_app/app/core/widgets/custom_list_tile.dart';
import 'package:delivery_app/app/core/widgets/custom_overview.dart';
import 'package:delivery_app/utils/colors.dart';
import 'package:delivery_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: AllColors.whiteColor,
        ),
        Container(
          height: 200,
          decoration: const BoxDecoration(
            color: AllColors.blackColor,
          ),
          child: Column(
            children: [
              const Gap(30),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: AllColors.imageBackgroundColor,
                ),
                title: Text(
                  textAlign: TextAlign.start,
                  "Jenny Wilson",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AllColors.greenColor,
                      ),
                ),
                subtitle: Text(
                  textAlign: TextAlign.start,
                  "Delivery Man",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AllColors.whiteColor,
                      ),
                ),
                trailing: const Icon(
                  Icons.notifications_none,
                  color: AllColors.orangeColor,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            height: MediaQuery.of(context).size.height,
            top: 120,
            left: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: MediaQuery.of(context).size.width,
                  color: AllColors.whiteColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Gap(10),
                      Text(
                        textAlign: TextAlign.center,
                        "Total Earning",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AllColors.blackColor,
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomCard(
                            icon: ImageUrl.dollarImage,
                            title: 'Earning',
                            money: "\$625.48",
                          ),
                          CustomCard(
                            icon: ImageUrl.percentageImage,
                            title: 'Collection',
                            money: "\$6225.48",
                          ),
                          CustomCard(
                            icon: ImageUrl.walletImage,
                            title: 'Balance',
                            money: "\$1254.89",
                          ),
                        ],
                      ),
                      const Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "Overview",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: AllColors.blackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Monthly",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        color: AllColors.blackColor
                                            .withOpacity(.5),
                                      ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: AllColors.blackColor.withOpacity(.5),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          CustomOverview(
                            bgColor: AllColors.blueColor.withOpacity(.1),
                            borderColor: AllColors.blueColor.withOpacity(.2),
                            title: 'Pending Parcels',
                            rat: '126',
                            icon: ImageUrl.framwImage,
                            barIcon: ImageUrl.line3Image,
                          ),
                          CustomOverview(
                            bgColor: AllColors.greenColor.withOpacity(.1),
                            borderColor: AllColors.greenColor.withOpacity(.2),
                            title: 'Delivered Parcels',
                            rat: '504',
                            icon: ImageUrl.groupImage,
                            barIcon: ImageUrl.line1Image,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomOverview(
                            borderColor:
                                AllColors.naveBlueColor.withOpacity(.2),
                            title: 'Partial Delivered Parcels',
                            rat: '45',
                            icon: ImageUrl.framw1Image,
                            barIcon: ImageUrl.lineImage,
                          ),
                          CustomOverview(
                            borderColor: AllColors.yellowColor.withOpacity(.2),
                            title: 'Return Parcels',
                            rat: '29',
                            icon: ImageUrl.framw2Image,
                            barIcon: ImageUrl.line2Image,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            textAlign: TextAlign.start,
                            "Pending Parcels",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: AllColors.blackColor,
                                    fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              textAlign: TextAlign.end,
                              "View All",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: AllColors.blackColor.withOpacity(.5),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      const CustomListTile(
                        image: ImageUrl.rec25Image,
                        title: "Exclusive Cotton Fiber Head Pillow",
                        subTitle: "Size: 34”, Weight: 2.5K",
                        money: "\$1254.89",
                      ),
                      const Gap(5),
                      const CustomListTile(
                        image: ImageUrl.recImage,
                        title: "Exclusive Cotton Fiber Head Pillow",
                        subTitle: "Size: 34”, Weight: 2.5K",
                        money: "\$1254.89",
                      ),
                      const Gap(5),
                    ],
                  ),
                ),
              ),
            ))
      ],
    ));
  }
}
