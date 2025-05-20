import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utilitis/common_widget.dart';

import '../utilitis/constant.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            FadeInUp(
              animate: true,
              from: 200,
              duration: Duration(milliseconds: 1000),
              child: CommonText(
                text: "About Me",
                textDecoration: TextDecoration.underline,
                fontSize: 30.sp,
                fontFamily: "LB",
              ),
            ),
            SizedBox(height: 40.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset("assets/animation/about_me.json", height: 250.h),
                Column(
                  children: [
                    FadeInUp(
                      animate: true,
                      from: 200,
                      duration: Duration(milliseconds: 1000),
                      child: SizedBox(
                        height: 78.h,
                        width: 511.w,
                        child: CommonText(
                          text:
                              "Hi, I’m Kenil. A passionate Flutter Application Developer based in Surat, India",
                          fontSize: 20.sp,
                          fontFamily: "LB",
                        ),
                      ),
                    ),
                    FadeInUp(
                      animate: true,
                      from: 200,
                      duration: Duration(milliseconds: 1000),
                      child: SizedBox(
                        width: 504.w,
                        child: CommonText(
                          text:
                              "Proficient Flutter Developer with 2 years and 5 months of ongoing experience in developing Android and iOS applications. Proficientin using Dart, with hands-on experience in software tools such as Xcode andAndroid Studio. Adept at collaborating with cross-functionalteams to deliver high-quality, user-friendly apps on time. Proven track record of maintaining code quality and optimizing application performance.",
                          fontSize: 14.sp,
                          fontFamily: "IR",
                          color: ConstColor.textColor.withValues(alpha: 0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Spacer(flex: 2),
        Column(
          children: [
            FadeInUp(
              animate: true,
              from: 200,
              duration: Duration(milliseconds: 1000),
              child: CommonText(
                text: "EXPERIENCE",
                textDecoration: TextDecoration.underline,
                fontSize: 30.sp,
                fontFamily: "LB",
              ),
            ),

            Lottie.asset("assets/animation/Exp_1.json", height: 250.h),
            SizedBox(height: 40.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInUp(
                  animate: true,
                  from: 200,
                  duration: Duration(milliseconds: 1000),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        text: "Junior Flutter Developer,\nRentech digital Inc.",
                        fontSize: 20.sp,
                        fontFamily: "LB",
                      ),
                      CommonText(
                        text: "2022-2023",
                        fontSize: 20.sp,
                        fontFamily: "LB",
                        color: ConstColor.textColor.withValues(alpha: 0.5),
                      ),
                    ],
                  ),
                ),
                FadeInUp(
                  animate: true,
                  from: 200,
                  duration: Duration(milliseconds: 1000),
                  child: SizedBox(
                    width: 508.w,
                    child: CommonText(
                      text:
                          "➼ Developed and maintained 5+ cross-platform mobile applications using Flutter and Dart, ensuring seamless performance on bothAndroid and iOS.\n➼ Collaborated with UI/UX designers to translate wireframes and prototypes into responsive and interactive user interfaces.\n➼ Integrated RESTfull APIs and third-party libraries to enable real-time data synchronization and external service interactions.",
                      fontSize: 14.sp,
                      fontFamily: "IR",
                      color: ConstColor.textColor.withValues(alpha: 0.5),
                    ),
                  ),
                ),
                SizedBox(height: 40.h,),
                FadeInUp(
                  animate: true,
                  from: 200,
                  duration: Duration(milliseconds: 1000),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        text: "Senior Flutter Developer\nVocsy Infotech Inc.",
                        fontSize: 20.sp,
                        fontFamily: "LB",
                      ),
                      CommonText(
                        text: "2023-Current",
                        fontSize: 20.sp,
                        fontFamily: "LB",
                        color: ConstColor.textColor.withValues(alpha: 0.5),
                      ),
                    ],
                  ),
                ),
                FadeInUp(
                  animate: true,
                  from: 200,
                  duration: Duration(milliseconds: 1000),
                  child: SizedBox(
                    width: 508.w,
                    child: CommonText(
                      text:
                      "➼ Utilized Xcode andAndroid Studio for development, debugging, and performance optimization.\n➼ Conducted code reviews and maintained code quality by following best practices and design patterns.\n➼ Worked closely with cross-functionalteams to deliver projects on time and within scope.Assisted in the integration ofthirdpartyAPIs and services.\n➼ Provided technical support and troubleshooting for existing applications.",
                      fontSize: 14.sp,
                      fontFamily: "IR",
                      color: ConstColor.textColor.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
