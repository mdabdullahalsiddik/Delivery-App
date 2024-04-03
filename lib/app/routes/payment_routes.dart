import 'package:get/get.dart';

import '../modules/payment/payment_binding.dart';
import '../modules/payment/payment_page.dart';

class PaymentRoutes {
  PaymentRoutes._();

  static const payment = '/payment';

  static final routes = [
    GetPage(
      name: payment,
      page: () => const PaymentPage(),
      binding: PaymentBinding(),
    ),
  ];
}
