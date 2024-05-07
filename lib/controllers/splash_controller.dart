import 'package:get/get.dart';
import 'package:pezhvak/routes/named_route.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.offAndToNamed(NamedRoute.homePage);
    });
    super.onInit();
  }
}
