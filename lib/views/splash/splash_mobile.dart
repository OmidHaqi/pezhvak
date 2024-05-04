import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pezhvak/resources/constants/paths.dart';

class SplashMobile extends StatelessWidget {
  const SplashMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Paths.splashLogoPng,
            width: 250,
          )
              .animate(
                
                onPlay: (controller) => controller.repeat(
                  reverse: true,
                ),
              )
              .scale(
                begin: const Offset(1, 1),
                delay: 500.ms,
                end: const Offset(1.2, 1.2),
                duration: 2000.ms,
              )
              .fade(begin: 0.5),
          const BlurBox(
            child: Text(
              'گروه توسعه و نرم افزار پژواک',
              style: TextStyle(fontSize: 32),
            ),
          )
        ],
      ),
    );
  }
}
