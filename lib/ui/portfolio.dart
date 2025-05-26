import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/utilitis/common_widget.dart';
import '../utilitis/constant.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        CommonText(
          text: "Portfolio",
          fontSize: 35.sp,
          fontFamily: "LB",
          textDecoration: TextDecoration.underline,
          color: ConstColor.textColor,
        ),

        // LayoutBuilder(
        //   builder: (context, constraints) {
        //     return GridView.extent(
        //       shrinkWrap: true,
        //       physics: const NeverScrollableScrollPhysics(),
        //       maxCrossAxisExtent: 280.w,
        //       childAspectRatio: 0.9,
        //       mainAxisSpacing: 40.h,
        //       crossAxisSpacing: 40.w,
        //       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        //       children: ,
        //     );
        //   },
        // ),
        Wrap(
          children: List.generate(8, (index) {
            return cardBox().paddingSymmetric(horizontal: 15.w, vertical: 15.w);
          }),
        ),
      ],
    ).paddingSymmetric(horizontal: 50.w);
  }

  Widget cardBox() {
    RxBool isHover = false.obs;
    return Obx(() {
      isHover.value;
      return MouseRegion(
        onEnter: (event) => isHover.value = true,
        onHover: (event) => isHover.value = true,
        onExit: (event) => isHover.value = false,
        child: AnimatedContainer(
          height: isHover.isTrue ? 265.w : 250.w,
          width: isHover.isTrue ? 245.w : 230.w,
          decoration: BoxDecoration(
            color: ConstColor.backgroundColor,
            border: Border.all(
              color: ConstColor.textColor.withValues(alpha: 0.5),
            ),
            borderRadius: BorderRadius.circular(15.r),
            boxShadow:
                isHover.isTrue
                    ? [
                      BoxShadow(
                        color: ConstColor.textColor,
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ]
                    : null,
          ),
          duration: Duration(milliseconds: 200),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Column(
                children: [
                  SizedBox(height: 10.w),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24.r),
                    child: AnimatedContainer(
                      height: isHover.isTrue ? 95.w : 80.w,
                      width: isHover.isTrue ? 95.w : 80.w,
                      duration: Duration(milliseconds: 200),
                      child: Image.asset(
                        "assets/icons/eypop.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.w),
                  AnimatedScaledText(
                    text: "Eypop",
                    isZoomed: isHover.value,
                    style: TextStyle(
                      color: ConstColor.textColor,
                      fontSize: 18.sp,
                      fontFamily: "LSB",
                    ),
                    duration: const Duration(milliseconds: 200),
                  ),
                  SizedBox(height: 10.w),
                  AnimatedScaledText(
                    maxLine: 8,
                    text:
                        "Application has features like payment, Google map with user and riderlive location tracking , search location, when rider arriving to show alert notification on user device , live chat Between user and rider. when user arriving to book location to auto payment success",
                    isZoomed: isHover.value,
                    maxScale: 1,
                    style: TextStyle(
                      color: ConstColor.textColor.withValues(alpha: .5),
                      fontSize: 10.sp,
                      fontFamily: "LSB",
                    ),
                    duration: const Duration(milliseconds: 200),
                  ).paddingSymmetric(horizontal: 10.w),
                ],
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: isHover.isTrue ? 35.w : 0.w,
                width: isHover.isTrue ? 100.w : 0.w,
                decoration: BoxDecoration(
                  color: ConstColor.textColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.r),
                    bottomRight: Radius.circular(13.r),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonText(
                      text: "View",
                      color: ConstColor.backgroundColor,
                      fontFamily: "ISB",
                      fontSize: 16.sp,
                    ),
                    SizedBox(width: 2.w),
                    Icon(
                      CupertinoIcons.arrow_right_circle_fill,
                      color: ConstColor.backgroundColor,
                      size: 15.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
