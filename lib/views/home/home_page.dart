import 'package:flutter/material.dart';
import 'package:pezhvak/responsive.dart';
import 'package:pezhvak/views/home/desktop.dart';
import 'package:pezhvak/views/home/mobile.dart';
import 'package:pezhvak/views/home/tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (Responsive.isDesktop(context)) {
          return Desktop();
        } else if (Responsive.isTablet(context)) {
          return Tablet();
        } else {
          return Mobile();
        }
      }),
    );
  }
}
