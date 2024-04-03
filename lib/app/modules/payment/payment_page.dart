import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'payment_controller.dart';

class PaymentPage extends GetView<PaymentController> {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaymentPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PaymentPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
