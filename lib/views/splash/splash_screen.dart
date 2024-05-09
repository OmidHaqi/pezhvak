import 'package:flutter/material.dart';
import 'package:pezhvak/resources/constants/paths.dart';
import 'package:pezhvak/responsive.dart';
import 'package:pezhvak/views/splash/splash_desktop.dart';
import 'package:pezhvak/views/splash/splash_mobile.dart';
import 'package:pezhvak/views/splash/splash_tablet.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Paths.bgPng),
              fit: BoxFit.cover,
            ),
          ),
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (Responsive.isDesktop(context)) {
              return const SplashDesktop();
            } else if (Responsive.isTablet(context)) {
              return const SplashTablet();
            } else {
              return const SplashMobile();
            }
          }),
        ),
      ),
    );
  }
}
