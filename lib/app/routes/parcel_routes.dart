import 'package:get/get.dart';

import '../modules/parcel/parcel_binding.dart';
import '../modules/parcel/parcel_page.dart';

class ParcelRoutes {
  ParcelRoutes._();

  static const parcel = '/parcel';

  static final routes = [
    GetPage(
      name: parcel,
      page: () => const ParcelPage(),
      binding: ParcelBinding(),
    ),
  ];
}
