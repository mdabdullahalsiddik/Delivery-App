import 'home_routes.dart';
import 'splash_routes.dart';
import 'welcome_routes.dart';
import 'sing_in_routes.dart';
import 'navigator_routes.dart';
import 'payment_routes.dart';
import 'parcel_routes.dart';
import 'profile_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/';

  static final routes = [
    ...SplashRoutes.routes,
    ...HomeRoutes.routes,
		...WelcomeRoutes.routes,
		...SingInRoutes.routes,
		...NavigatorRoutes.routes,
		...PaymentRoutes.routes,
		...ParcelRoutes.routes,
		...ProfileRoutes.routes,
  ];
}
