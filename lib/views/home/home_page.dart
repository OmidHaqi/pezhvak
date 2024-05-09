import 'package:flutter/material.dart';
import 'package:pezhvak/resources/widgets.dart';
import 'package:pezhvak/responsive.dart';
import 'package:pezhvak/views/home/Desktop/home_desktop.dart';
import 'package:pezhvak/views/home/home_mobile.dart';
import 'package:pezhvak/views/home/home_tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Background(
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (Responsive.isDesktop(context)) {
              return HomeDesktop(
                size: size,
              );
            } else if (Responsive.isTablet(context)) {
              return HomeTablet();
            } else {
              return HomeMobile();
            }
          }),
        ),
      ),
    );
  }
}
