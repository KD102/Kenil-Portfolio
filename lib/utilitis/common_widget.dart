import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'constant.dart';

class CommonText extends GetView {
  const CommonText({
    super.key,
    required this.text,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.height,
    this.fontFamily,
    this.textDecoration,
  });

  final String text;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? fontSize;
  final double? letterSpacing;
  final double? height;
  final FontWeight? fontWeight;
  final Color? color;
  final String? fontFamily;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      textScaler: const TextScaler.linear(1),
      // overflow: overflow,
      // softWrap: true,
      style: TextStyle(
        overflow: overflow,
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? ConstColor.textColor,
        letterSpacing: letterSpacing,
        height: height,
        fontFamily: fontFamily ?? 'IR',
        decoration: textDecoration,
      ),
    );
  }
}

class CommonZoomAnimation extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double zoomHeight;
  final double zoomWidth;

  CommonZoomAnimation({
    super.key,
    required this.child,
    required this.height,
    required this.width,
    required this.zoomHeight,
    required this.zoomWidth,
  });

  final RxBool isAnimate = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      isAnimate.value;
      return MouseRegion(
        onEnter: (event) => isAnimate.value = true,
        onHover: (event) => isAnimate.value = true,
        onExit: (event) => isAnimate.value = false,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: isAnimate.isTrue ? zoomHeight : height,
          width: isAnimate.isTrue ? zoomWidth : width,
          child: child,
        ),
      );
    });
  }
}

class SvgView extends StatelessWidget {
  const SvgView(
    this.svg, {
    super.key,
    this.color,
    this.height,
    this.width,
    this.onTap,
    this.padding,
    this.fit = BoxFit.contain,
    this.network = false,
  });

  final String svg;
  final Color? color;
  final double? height, width;
  final BoxFit fit;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final bool network;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child:
            network
                ? SvgPicture.network(
                  svg,
                  colorFilter:
                      color != null
                          ? ColorFilter.mode(color!, BlendMode.srcIn)
                          : null,
                  height: height,
                  width: width,
                  fit: fit,
                )
                : SvgPicture.asset(
                  svg,
                  colorFilter:
                      color != null
                          ? ColorFilter.mode(
                            color ?? ConstColor.textColor,
                            BlendMode.srcIn,
                          )
                          : null,
                  height: height,
                  width: width,
                  fit: fit,
                ),
      ),
    );
  }
}

class CommonButton extends StatelessWidget {
  final double height;
  final double width;
  final double fontSize;
  final String title;
  final Function() onTap;

  CommonButton({
    super.key,
    required this.height,
    required this.width,
    required this.fontSize,
    required this.title,
    required this.onTap,
  });

  final RxBool isHover = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      isHover.value;
      return Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: height,
            width: isHover.isTrue ? width : 0,
            decoration: BoxDecoration(
              border: Border.all(color: ConstColor.textColor),
              color:
                  isHover.isTrue
                      ? ConstColor.textColor
                      : ConstColor.backgroundColor,
              borderRadius: BorderRadius.circular(30.r),
            ),
          ),
          MouseRegion(
            onEnter: (event) => isHover.value = true,
            onHover: (event) => isHover.value = true,
            onExit: (event) => isHover.value = false,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ConstColor.textColor),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                height: height,
                width: width,
                child: Center(
                  child: CommonText(
                    text: title,
                    fontFamily: "ISB",
                    fontSize: fontSize,
                    color:
                        isHover.isTrue
                            ? ConstColor.backgroundColor
                            : ConstColor.textColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
