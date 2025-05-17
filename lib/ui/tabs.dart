import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/utilitis/common_widget.dart';
import 'package:portfolio/utilitis/constant.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 20.w),
          CommonText(text: 'Keneel Dhanani', fontFamily: "IB", fontSize: 40.sp),
          Spacer(),
          TabBarView().paddingOnly(top: 12.h),
          // GitAndLinkedinButton(),
          SizedBox(width: 20.w),
          CommonButton(
            onTap: () {},
            height: 50.h,
            width: 150.w,
            fontSize: 18.sp,
            title: 'Let’s talk',
          ),
          SizedBox(width: 20.w),
        ],
      ),
    );
  }
}

class TabBarView extends StatelessWidget {
  TabBarView({super.key});

  final List<String> tabs = ['Home', 'About', 'Portfolio', 'Contact'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: tabs.length,
        itemBuilder: (context, index) {
          final RxBool isHover = false.obs;
          return Obx(() {
            isHover.value;
            return MouseRegion(
              onEnter: (event) {
                isHover.value = true;
              },
              onExit: (event) {
                isHover.value = false;
              },
              child: GestureDetector(
                onTap: () {},
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  child: Column(
                    children: [
                      CommonText(
                        text: tabs[index],
                        color:
                            isHover.isTrue
                                ? ConstColor.textColor
                                : ConstColor.textColor.withValues(alpha: 0.50),
                        fontFamily: "ISB",
                        fontSize: 18.sp,
                      ).paddingSymmetric(horizontal: 15.w),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: ConstColor.textColor,
                          borderRadius: BorderRadius.all(Radius.circular(15.r)),
                        ),
                        width: isHover.value ? 55.w : 0,
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}

class LetsTalk extends StatelessWidget {
  const LetsTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


