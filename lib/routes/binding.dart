import 'package:get/get.dart';
import 'package:pezhvak/controllers/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
  
}