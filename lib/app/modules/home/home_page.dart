import 'package:delivery_app/app/core/widgets/custom_card.dart';
import 'package:delivery_app/app/core/widgets/custom_list_tile.dart';
import 'package:delivery_app/app/core/widgets/custom_overview.dart';
import 'package:delivery_app/uitils/images.dart';
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
          color: Colors.white,
        ),
        Container(
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            children: [
              const Gap(30),
              ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffD9D9D9),
                ),
                title: Text(
                  textAlign: TextAlign.start,
                  "Jenny Wilson",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.green,
                      ),
                ),
                subtitle: Text(
                  textAlign: TextAlign.start,
                  "Delivery Man",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                ),
                trailing: const Icon(
                  Icons.notifications_none,
                  color: Colors.orange,
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
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Gap(10),
                      Text(
                        textAlign: TextAlign.center,
                        "Total Earning",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black,
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
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
                                        color: Colors.black.withOpacity(.5),
                                      ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Colors.black.withOpacity(.5),
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
                            bgColor: const Color(0xff00B7E9).withOpacity(.1),
                            borderColor:
                                const Color(0xff00B7E9).withOpacity(.2),
                            title: 'Pending Parcels',
                            rat: '126',
                            icon: ImageUrl.framwImage,
                            barIcon: ImageUrl.line3Image,
                          ),
                          CustomOverview(
                            bgColor: const Color(0xff21C781).withOpacity(.1),
                            borderColor: const Color(0xff21C781),
                            title: 'Delivered Parcels',
                            rat: '504',
                            icon: ImageUrl.groupImage,
                            barIcon: ImageUrl.line1Image,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          CustomOverview(
                            borderColor: Color(0xff847FF8),
                            title: 'Partial Delivered Parcels',
                            rat: '45',
                            icon: ImageUrl.framw1Image,
                            barIcon: ImageUrl.lineImage,
                          ),
                          CustomOverview(
                            borderColor: Color(0xffD2C127),
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
                                    color: Colors.black,
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
                                    color: Colors.black.withOpacity(.5),
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
