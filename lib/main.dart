import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pezhvak/my_http_overrides.dart';
import 'package:pezhvak/resources/themes/themes.dart';
import 'package:pezhvak/routes/named_route.dart';
import 'package:pezhvak/routes/pages.dart';

void main() {
  //X509 Certificate
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pezhvak',
      locale: const Locale('fa'),
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      getPages: Pages.pages,
      initialRoute: NamedRoute.initialRoute,
    );
  }
}
