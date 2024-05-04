import 'package:get/get.dart';
import 'package:pezhvak/views/home/home_page.dart';

import '../routes/named_route.dart';
import '../views/splash/splash_screen.dart';

class Pages {
  Pages._();

  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: NamedRoute.initialRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      transition: Transition.fade,
      name: NamedRoute.homePage,
      page: () => const HomePage(),
    ),
  ];
}
