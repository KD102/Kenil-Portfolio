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
        children: [
          Spacer(),
          TabBarView(),
          GitAndLinkedinButton().paddingOnly(bottom: 25.h),
          SizedBox(width: 20.w),
        ],
      ),
    );
  }
}

class TabBarView extends StatelessWidget {
  TabBarView({super.key});

  final List<String> tabs = [
    'Home',
    'About',
    'Tech Stack',
    'Projects',
    'Contact',
  ];

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
                      Text(
                        tabs[index],
                        style: TextStyle(
                          color:
                              isHover.isTrue
                                  ? ConstColor.darkContent
                                  : ConstColor.darkContent.withValues(
                                    alpha: 0.50,
                                  ),
                          fontSize: 14.sp,
                        ),
                      ).paddingSymmetric(horizontal: 20.w),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: ConstColor.darkContent,
                          borderRadius: BorderRadius.all(Radius.circular(15.r)),
                        ),
                        width: isHover.value ? 40.w : 0,
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

class GitAndLinkedinButton extends StatelessWidget {
  const GitAndLinkedinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonZoomAnimation(
          height: 30.h,
          width: 30.h,
          zoomHeight: 40.h,
          zoomWidth: 40.h,
          child: SvgView('assets/icons/github.svg'),
        ),
        SizedBox(width: 10.w),
        CommonZoomAnimation(
          height: 30.h,
          width: 30.h,
          zoomHeight: 40.h,
          zoomWidth: 40.h,
          child: SvgView('assets/icons/linkdin.svg'),
        ),
      ],
    );
  }
}
