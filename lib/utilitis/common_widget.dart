import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'constant.dart';

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
  const SvgView(this.svg,
      {super.key, this.color, this.height, this.width, this.onTap, this.padding, this.fit = BoxFit.contain, this.network = false});

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
        child: network
            ? SvgPicture.network(svg,
            colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
            height: height,
            width: width,
            fit: fit)
            : SvgPicture.asset(svg,
            colorFilter: color != null ? ColorFilter.mode(color ?? ConstColor.darkContent, BlendMode.srcIn) : null,
            height: height,
            width: width,
            fit: fit),
      ),
    );
  }
}