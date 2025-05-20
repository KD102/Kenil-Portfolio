
import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:portfolio/ui/tabs.dart';
import 'package:portfolio/utilitis/common_widget.dart';
import 'package:portfolio/utilitis/constant.dart';


class Homepage extends StatelessWidget {
  Homepage({super.key});

  final typeController = AnimatedTextController();
  final RxBool isSecondTextAnimate = false.obs;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(top: 30.h, left: 0.0, right: 0.0, child: Tabs()),
        Positioned(
          top: 260.h,
          left: 125.w,
          child: Obx(() {
            isSecondTextAnimate.value;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  isRepeatingAnimation: false,
                  onFinished: () {
                    isSecondTextAnimate.value = true;
                  },
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter\ndeveloper !',

                      textStyle: TextStyle(
                        color: ConstColor.textColor,
                        fontFamily: "LB",
                        fontSize: 50.sp,
                      ),
                    ),
                  ],
                  controller: typeController,
                ),
                SizedBox(height: 11.h),
                if (isSecondTextAnimate.isTrue)
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        'Hi, I’m Kenil. A passionate Flutter\nDeveloper based in India.',
                        textStyle: TextStyle(
                          color: ConstColor.textColor,
                          fontFamily: "IM",
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                    controller: typeController,
                  ),
                SizedBox(height: 20.h),
                GitAndLinkedinButton(),
              ],
            );
          }),
        ),
        Positioned(top: 227.h, right: 181.w, child: FullScreenGlowBox()),
        Positioned(
          top: 750.h,
          right: 0.0,
          left: 0.0,
          child: Center(child: TechTools()),
        ),

      ],
    );
  }
}

class GitAndLinkedinButton extends StatelessWidget {
  const GitAndLinkedinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CommonZoomAnimation(
          height: 45.h,
          width: 45.h,
          zoomHeight: 60.h,
          zoomWidth: 60.h,
          child: SvgView(
            'assets/icons/github.svg',
            color: ConstColor.textColor,
          ),
        ),
        SizedBox(width: 10.w),
        CommonZoomAnimation(
          height: 45.h,
          width: 45.h,
          zoomHeight: 60.h,
          zoomWidth: 60.h,
          child: SvgView(
            'assets/icons/linkdin.svg',
            color: ConstColor.textColor,
          ),
        ),
      ],
    );
  }
}

class FullScreenGlowBox extends StatelessWidget {
  FullScreenGlowBox({super.key});

  final GlobalKey _boxKey = GlobalKey();
  final RxInt _glowSegment = RxInt(-1); // 0 to 15
  final double boxSize = 400.0;

  void _updateGlowSide(PointerHoverEvent event) {
    final boxContext = _boxKey.currentContext;
    if (boxContext == null) return;

    final box = boxContext.findRenderObject() as RenderBox;
    final boxPosition = box.localToGlobal(Offset.zero);
    final boxCenter = boxPosition + Offset(boxSize / 2, boxSize / 2);

    final dx = event.position.dx - boxCenter.dx;
    final dy = event.position.dy - boxCenter.dy;

    final angle = (atan2(dy, dx) * 180 / pi + 360) % 360;
    final segment = ((angle + 11.25) ~/ 22.5) % 16; // 16 segments

    _glowSegment.value = segment;
  }

  Offset _getShadowOffset(int segment) {
    // Simple directional offset mapping (adjusted for aesthetics)
    const offsets = [
      Offset(0, -6),    // N
      Offset(2, -5),    // NNE
      Offset(4, -4),    // NE
      Offset(5, -2),    // ENE
      Offset(6, 0),     // E
      Offset(5, 2),     // ESE
      Offset(4, 4),     // SE
      Offset(2, 5),     // SSE
      Offset(0, 6),     // S
      Offset(-2, 5),    // SSW
      Offset(-4, 4),    // SW
      Offset(-5, 2),    // WSW
      Offset(-6, 0),    // W
      Offset(-5, -2),   // WNW
      Offset(-4, -4),   // NW
      Offset(-2, -5),   // NNW
    ];
    return offsets[segment];
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      Offset glowOffset = _glowSegment.value >= 0
          ? _getShadowOffset(_glowSegment.value)
          : Offset.zero;

      return MouseRegion(
        onHover: _updateGlowSide,
        child: Center(
          child: AnimatedContainer(
            key: _boxKey,
            duration: const Duration(milliseconds: 200),
            width: boxSize,
            height: boxSize,
            decoration: BoxDecoration(
              color: Colors.black,
              image: const DecorationImage(
                image: AssetImage("assets/icons/profile_image.png"),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(200),
              boxShadow: [
                if (_glowSegment.value >= 0)
                  BoxShadow(
                    color: Colors.white,
                    offset: glowOffset,
                    blurRadius: 12,
                  ),
              ],
            ),
          ),
        ),
      );
    });
  }
}


class TechTools extends StatelessWidget {
  TechTools({super.key});

  final List<String> iconList = [
    "assets/icons/dart.svg",
    "assets/icons/flutter.svg",
    "assets/icons/xcode.svg",
    "assets/icons/android_studio.svg",
    "assets/icons/github.svg",
    "assets/icons/java.svg",
    "assets/icons/swift.svg",
    "assets/icons/firebase.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CommonText(
          textDecoration: TextDecoration.underline,
          text: "Technologies & Tools",
          fontFamily: "ISB",
          fontSize: 20.sp,
        ),
        SizedBox(height: 38.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(iconList.length, (index) {
            return SvgView(
              iconList[index],
              height: 60.h,
              width: 60.h,
            ).paddingSymmetric(horizontal: 20.w);
          }),
        ),
      ],
    );
  }
}