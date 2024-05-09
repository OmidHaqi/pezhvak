import 'package:blurbox/blurbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pezhvak/resources/constants/paths.dart';
import 'package:pezhvak/views/home/Desktop/desktop_home_index.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeDesktop extends StatelessWidget {
  HomeDesktop({super.key, required this.size});
  final Size size;
  final RxInt selectedPageIndex = 0.obs;
  
  changeScreen(int value) {
    selectedPageIndex.value = value;
  }

  @override
  Widget build(BuildContext context) {
    RxInt selectedScreen = selectedPageIndex;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width / 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                Paths.splashLogoPng,
                width: size.width / 10.93,
              ),
              SizedBox(
                width: size.width / 5,
              ),
              BlurBox(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xff4D4D4D)),
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ZoomTapAnimation(
                        onTap: () => changeScreen(0),
                        child: Container(
                          width: selectedScreen.value == 0
                              ? size.width / 15
                              : size.width / 16,
                          height: size.height / 23.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: selectedScreen.value == 0
                                ? const Color(0xff1D1D1D)
                                : Colors.transparent,
                            border: Border.all(
                              color: selectedScreen.value == 0
                                  ? const Color(0xff4D4D4D)
                                  : Colors.transparent,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'خانه',
                              style: TextStyle(
                                  fontWeight: selectedScreen.value == 0
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                      ZoomTapAnimation(
                        onTap: () => changeScreen(1),
                        child: Container(
                          width: selectedScreen.value == 1
                              ? size.width / 15
                              : size.width / 16,
                          height: size.height / 23.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: selectedScreen.value == 1
                                ? const Color(0xff1D1D1D)
                                : Colors.transparent,
                            border: Border.all(
                              color: selectedScreen.value == 1
                                  ? const Color(0xff4D4D4D)
                                  : Colors.transparent,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'مشاوره',
                              style: TextStyle(
                                  fontWeight: selectedScreen.value == 1
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                      ZoomTapAnimation(
                        onTap: () => changeScreen(2),
                        child: Container(
                          width: selectedScreen.value == 2
                              ? size.width / 15
                              : size.width / 16,
                          height: size.height / 23.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: selectedScreen.value == 2
                                ? const Color(0xff1D1D1D)
                                : Colors.transparent,
                            border: Border.all(
                              color: selectedScreen.value == 2
                                  ? const Color(0xff4D4D4D)
                                  : Colors.transparent,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'پروژه‌ها',
                              style: TextStyle(
                                  fontWeight: selectedScreen.value == 2
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                      ZoomTapAnimation(
                        onTap: () => changeScreen(3),
                        child: Container(
                          width: selectedScreen.value == 3
                              ? size.width / 15
                              : size.width / 16,
                          height: size.height / 23.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: selectedScreen.value == 3
                                ? const Color(0xff1D1D1D)
                                : Colors.transparent,
                            border: Border.all(
                              color: selectedScreen.value == 3
                                  ? const Color(0xff4D4D4D)
                                  : Colors.transparent,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'ارتباط باما',
                              style: TextStyle(
                                  fontWeight: selectedScreen.value == 3
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ZoomTapAnimation(
                        child: SvgPicture.asset(Paths.icTelegram)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ZoomTapAnimation(
                        child: SvgPicture.asset(Paths.icGithub)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ZoomTapAnimation(
                        child: SvgPicture.asset(Paths.icLinkdin)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ZoomTapAnimation(
                        child: SvgPicture.asset(Paths.icYoutube)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ZoomTapAnimation(
                        child: SvgPicture.asset(Paths.icInstagram)),
                  ),
                ],
              )
            ],
          ),
        ),
        Obx(
          () => IndexedStack(
            alignment: Alignment.center,
            index: selectedPageIndex.value,
            children: [
              DesktopHomeIndex(size: size),
              const Text('Project'),
              const Text('Moshver'),
              const Text('ContactUS'),
            ],
          ),
        )
      ],
    );
  }
}
