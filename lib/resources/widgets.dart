import 'package:flutter/material.dart';
import 'package:pezhvak/resources/constants/paths.dart';

class Background extends StatelessWidget {
  Background({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Paths.bgPng),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
