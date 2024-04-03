import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'parcel_controller.dart';

class ParcelPage extends GetView<ParcelController> {
  const ParcelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ParcelPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ParcelPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
