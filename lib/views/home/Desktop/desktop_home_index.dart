import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pezhvak/resources/constants/paths.dart';

class DesktopHomeIndex extends StatelessWidget {
  const DesktopHomeIndex({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height / 1.2,
      child: Padding(
        padding: const EdgeInsets.only(right: 50, top: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width / 80,
            ),
            SizedBox(
              height: size.height / 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: const Text(
                      'گروه توسعه و طراحی پژواک',
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10 , left: 10),
                        child: SvgPicture.asset(Paths.vcCircle),
                      ),
                      SizedBox(
                        width: size.width / 4,
                        height: size.height/3,
                        child: const Text(
                          'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز',
                          style: TextStyle(fontSize: 22),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
             Expanded(
              child: Image.asset(Paths.animationPng ,width:650,height: 650,))
          ],
        ),
      ),
    );
  }
}
