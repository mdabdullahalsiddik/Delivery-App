import 'package:get/get.dart';

import '../modules/navigator/navigator_binding.dart';
import '../modules/navigator/navigator_page.dart';

class NavigatorRoutes {
  NavigatorRoutes._();

  static const navigator = '/navigator';

  static final routes = [
    GetPage(
      name: navigator,
      page: () => const NavigatorPage(),
      binding: NavigatorBinding(),
    ),
  ];
}
