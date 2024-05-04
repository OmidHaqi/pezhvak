
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pezhvak/responsive.dart';
import 'package:pezhvak/routes/named_route.dart';
import 'package:pezhvak/views/splash/splash_desktop.dart';
import 'package:pezhvak/views/splash/splash_mobile.dart';
import 'package:pezhvak/views/splash/splash_tablet.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      
      Get.offAndToNamed(NamedRoute.homePage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (Responsive.isDesktop(context)) {
            return SplashDesktop();
          } else if (Responsive.isTablet(context)) {
            return SplashTablet();
          } else {
            return SplashMobile();
          }
        }),
      ),
    );
  }
}
