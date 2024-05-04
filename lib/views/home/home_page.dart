import 'package:flutter/material.dart';
import 'package:pezhvak/responsive.dart';
import 'package:pezhvak/views/home/home_desktop.dart';
import 'package:pezhvak/views/home/home_mobile.dart';
import 'package:pezhvak/views/home/home_tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (Responsive.isDesktop(context)) {
            return HomeDesktop();
          } else if (Responsive.isTablet(context)) {
            return HomeTablet();
          } else {
            return HomeMobile();
          }
        }),
      ),
    );
  }
}
