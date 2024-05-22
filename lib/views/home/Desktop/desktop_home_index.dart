import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pezhvak/resources/constants/paths.dart';

class DesktopHomeIndex extends StatelessWidget {
  DesktopHomeIndex({
    super.key,
    required this.size,
  });

  final Size size;
  final RxBool isHoverCircle = false.obs;
  final RxBool isHoverPluse = false.obs;
  final RxBool isHoverTriangle = false.obs;
  final RxBool isHoverVector = false.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height / 1.19,
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
                    child: Text(
                      'گروه توسعه و طراحی پژواک',
                      style: TextStyle(
                        fontSize: size.width / 27,
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
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: SvgPicture.asset(
                          Paths.vcCircle,
                          width: size.width / 42,
                        ),
                      ),
                      SizedBox(
                        width: size.width / 4,
                        height: size.height / 3,
                        child: Text(
                          'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز',
                          style: TextStyle(fontSize: size.width / 78.5),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Stack(children: [
                    Image.asset(
                      Paths.animationPng,
                      width: 650,
                      height: 650,
                    ),
                    Positioned(
                      top: 30,
                      left: 50,
                      child: Obx(
                        () => InkWell(
                          onTap: () {},
                          onHover: (val) {
                            isHoverCircle.value = val;
                          },
                          child: SvgPicture.asset(
                            Paths.vcCircle,
                            width: isHoverCircle.value
                                ? size.width / 20
                                : size.width / 30,
                          ),
                        ),
                      ),
                    ),
                    Obx(() => Positioned(
                          left: 0,
                          bottom: 250,
                          child: InkWell(
                            onTap: () {},
                            onHover: (val) {
                              isHoverPluse.value = val;
                            },
                            child: SvgPicture.asset(
                              Paths.vcPluse,
                              width: isHoverPluse.value
                                  ? size.width / 45
                                  : size.width / 55,
                            ),
                          ),
                        )),
                    Obx(() => Positioned(
                          right: 50,
                          bottom: 150,
                          child: InkWell(
                            onTap: () {},
                            onHover: (val) {
                              isHoverTriangle.value = val;
                            },
                            child: SvgPicture.asset(
                              Paths.vcTriangle,
                              width: isHoverTriangle.value
                                  ? size.width / 24
                                  : size.width / 34,
                            ),
                          ),
                        )),
                    Obx(() => Positioned(
                          top: 10,
                          right: 50,
                          child: InkWell(
                            onTap: () {},
                            onHover: (val) {
                              isHoverVector.value = val;
                            },
                            child: SvgPicture.asset(
                              Paths.vcVector,
                              width: isHoverVector.value
                                  ? size.width / 27
                                  : size.width / 37,
                            ),
                          ),
                        )),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
