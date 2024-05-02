import 'package:get/get.dart';


import '../routes/named_route.dart';
import '../views/splash_screen.dart';

class Pages {

  Pages._();

    static List<GetPage<dynamic>>  pages =  [
          GetPage(
              name: NamedRoute.initialRoute,
              page: () => const SplashScreen(),
             )];
  
}