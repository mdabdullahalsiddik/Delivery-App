// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:delivery_app/uitils/images.dart';

class CustomCard extends StatelessWidget {
  var icon;
  final String title;
  final String money;
  CustomCard({
    super.key,
    required this.icon,
    required this.title,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
            ),
            Text(
              textAlign: TextAlign.center,
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.black,
                  ),
            ),
            Text(
              textAlign: TextAlign.center,
              money,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.green,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
