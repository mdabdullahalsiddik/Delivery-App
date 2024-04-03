// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:delivery_app/utils/colors.dart';
import 'package:flutter/material.dart';


class CustomOverview extends StatelessWidget {
  final String title;
  final String rat;
  final String icon;
  final String barIcon;
  final Color? bgColor;
  final Color? borderColor;
  const CustomOverview({
    super.key,
    required this.title,
    required this.rat,
    required this.icon,
    required this.barIcon,
    this.bgColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.3,
      height: 120,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? AllColors.whiteColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        color: bgColor ?? AllColors.whiteColor.withOpacity(.5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(icon),
                  Image.asset(barIcon),
                ],
              ),
              Text(
                textAlign: TextAlign.start,
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AllColors.blackColor,
                    ),
              ),
              Text(
                textAlign: TextAlign.start,
                rat,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AllColors.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
