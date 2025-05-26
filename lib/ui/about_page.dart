// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lottie/lottie.dart';
// import 'package:portfolio/utilitis/common_widget.dart';
//
// import '../utilitis/constant.dart';
//
// class AboutPage extends StatelessWidget {
//   const AboutPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         FadeInUp(
//           animate: true,
//           from: 200,
//           duration: Duration(milliseconds: 1000),
//           child: CommonText(
//             text: "About Me",
//             textDecoration: TextDecoration.underline,
//             fontSize: 30.sp,
//             fontFamily: "LB",
//           ),
//         ),
//         SizedBox(height: 40.h),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Lottie.asset("assets/animation/about_me.json", height: 250.h),
//             Column(
//               children: [
//                 FadeInUp(
//                   animate: true,
//                   from: 200,
//                   duration: Duration(milliseconds: 1000),
//                   child: SizedBox(
//                     height: 78.h,
//                     width: 511.w,
//                     child: CommonText(
//                       text:
//                           "Hi, I’m Kenil. A passionate Flutter Application Developer based in Surat, India",
//                       fontSize: 20.sp,
//                       fontFamily: "LB",
//                     ),
//                   ),
//                 ),
//                 FadeInUp(
//                   animate: true,
//                   from: 200,
//                   duration: Duration(milliseconds: 1000),
//                   child: SizedBox(
//                     width: 504.w,
//                     child: CommonText(
//                       text:
//                           "Proficient Flutter Developer with 2 years and 5 months of ongoing experience in developing Android and iOS applications. Proficientin using Dart, with hands-on experience in software tools such as Xcode andAndroid Studio. Adept at collaborating with cross-functionalteams to deliver high-quality, user-friendly apps on time. Proven track record of maintaining code quality and optimizing application performance.",
//                       fontSize: 14.sp,
//                       fontFamily: "IR",
//                       color: ConstColor.textColor.withValues(alpha: 0.5),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//
//         SizedBox(height: 20.h),
//         FadeInUp(
//           animate: true,
//           from: 200,
//           duration: Duration(milliseconds: 1000),
//           child: CommonText(
//             text: "EXPERIENCE",
//             textDecoration: TextDecoration.underline,
//             fontSize: 30.sp,
//             fontFamily: "LB",
//           ),
//         ),
//
//         Lottie.asset("assets/animation/Exp_1.json", height: 250.h),
//         SizedBox(height: 20.h),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 FadeInUp(
//                   animate: true,
//                   from: 200,
//                   duration: Duration(milliseconds: 1000),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CommonText(
//                         text: "Junior Flutter Developer,\nRentech digital Inc.",
//                         fontSize: 20.sp,
//                         fontFamily: "LB",
//                       ),
//                       CommonText(
//                         text: "2022-2023",
//                         fontSize: 20.sp,
//                         fontFamily: "LB",
//                         color: ConstColor.textColor.withValues(alpha: 0.5),
//                       ),
//                     ],
//                   ),
//                 ),
//                 FadeInUp(
//                   animate: true,
//                   from: 200,
//                   duration: Duration(milliseconds: 1000),
//                   child: SizedBox(
//                     width: 508.w,
//                     child: CommonText(
//                       text:
//                           "➼ Developed and maintained 5+ cross-platform mobile applications using Flutter and Dart, ensuring seamless performance on bothAndroid and iOS.\n➼ Collaborated with UI/UX designers to translate wireframes and prototypes into responsive and interactive user interfaces.\n➼ Integrated RESTfull APIs and third-party libraries to enable real-time data synchronization and external service interactions.",
//                       fontSize: 14.sp,
//                       fontFamily: "IR",
//                       color: ConstColor.textColor.withValues(alpha: 0.5),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 FadeInUp(
//                   animate: true,
//                   from: 200,
//                   duration: Duration(milliseconds: 1000),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CommonText(
//                         text: "Senior Flutter Developer\nVocsy Infotech Inc.",
//                         fontSize: 20.sp,
//                         fontFamily: "LB",
//                       ),
//                       CommonText(
//                         text: "2023-Current",
//                         fontSize: 20.sp,
//                         fontFamily: "LB",
//                         color: ConstColor.textColor.withValues(alpha: 0.5),
//                       ),
//                     ],
//                   ),
//                 ),
//                 FadeInUp(
//                   animate: true,
//                   from: 200,
//                   duration: Duration(milliseconds: 1000),
//                   child: SizedBox(
//                     width: 508.w,
//                     child: CommonText(
//                       text:
//                           "➼ Utilized Xcode andAndroid Studio for development, debugging, and performance optimization.\n➼ Conducted code reviews and maintained code quality by following best practices and design patterns.\n➼ Worked closely with cross-functionalteams to deliver projects on time and within scope.Assisted in the integration ofthirdpartyAPIs and services.\n➼ Provided technical support and troubleshooting for existing applications.",
//                       fontSize: 14.sp,
//                       fontFamily: "IR",
//                       color: ConstColor.textColor.withValues(alpha: 0.5),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart'; // 👈 Added for kIsWeb
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utilitis/common_widget.dart';
import '../utilitis/constant.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Only allow on web
    if (!kIsWeb) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: CommonText(
            text: "This page is only available on the web.",
            fontSize: 18.sp,
            fontFamily: "LB",
          ),
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;
        bool _ =
            constraints.maxWidth >= 600 && constraints.maxWidth < 1024;

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16.w : 40.w,
              vertical: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Heading: About Me
                FadeInUp(
                  animate: true,
                  from: 200,
                  duration: Duration(milliseconds: 1000),
                  child: CommonText(
                    text: "About Me",
                    textDecoration: TextDecoration.underline,
                    fontSize: isMobile ? 24.sp : 30.sp,
                    fontFamily: "LB",
                  ),
                ),

                /// About Section
                isMobile
                    ? Column(
                      children: [
                        Lottie.asset(
                          "assets/animation/about_me.json",
                          height: 200.h,
                        ),
                        SizedBox(height: 16.h),
                        _buildAboutText(isMobile),
                      ],
                    )
                    : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(
                          "assets/animation/about_me.json",
                          height: 250.h,
                        ),
                        SizedBox(width: 30.w),
                        _buildAboutText(isMobile),
                      ],
                    ),



                /// Heading: Experience
                FadeInUp(
                  animate: true,
                  from: 200,
                  duration: Duration(milliseconds: 1000),
                  child: CommonText(
                    text: "EXPERIENCE",
                    textDecoration: TextDecoration.underline,
                    fontSize: isMobile ? 24.sp : 30.sp,
                    fontFamily: "LB",
                  ),
                ),

                Lottie.asset("assets/animation/Exp_1.json", height: 250.h),


                /// Experience Section
                isMobile
                    ? Column(
                      children: [
                        _buildExperienceBlock(
                          title:
                              "Junior Flutter Developer,\nRentech digital Inc.",
                          year: "2022 - 2023",
                          description:
                              "➼ Developed and maintained 5+ cross-platform mobile applications using Flutter and Dart.\n"
                              "➼ Translated wireframes into UI.\n"
                              "➼ Integrated RESTful APIs and third-party libraries.",
                        ),
                        SizedBox(height: 30.h),
                        _buildExperienceBlock(
                          title:
                              "Senior Flutter Developer,\nVocsy Infotech Inc.",
                          year: "2023 - Present",
                          description:
                              "➼ Used Xcode and Android Studio for dev & debugging.\n"
                              "➼ Conducted code reviews.\n"
                              "➼ Integrated third-party APIs and provided support.",
                        ),
                      ],
                    )
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 500.w,
                          child: _buildExperienceBlock(
                            title:
                                "Junior Flutter Developer,\nRentech digital Inc.",
                            year: "2022 - 2023",
                            description:
                                "➼ Developed and maintained 5+ cross-platform mobile applications using Flutter and Dart.\n"
                                "➼ Translated wireframes into UI.\n"
                                "➼ Integrated RESTful APIs and third-party libraries.",
                          ),
                        ),
                        SizedBox(width: 40.w),
                        SizedBox(
                          width: 500.w,
                          child: _buildExperienceBlock(
                            title:
                                "Senior Flutter Developer,\nVocsy Infotech Inc.",
                            year: "2023 - Present",
                            description:
                                "➼ Used Xcode and Android Studio for dev & debugging.\n"
                                "➼ Conducted code reviews.\n"
                                "➼ Integrated third-party APIs and provided support.",
                          ),
                        ),
                      ],
                    ),
                SizedBox(height: 40.h),
                CommonButton(
                  height: 65.h,
                  width: 245.w,
                  fontSize: 24.sp,
                  title: 'Download CV',
                  onTap: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAboutText(bool isMobile) {
    return FadeInUp(
      animate: true,
      from: 200,
      duration: Duration(milliseconds: 1000),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text:
                "Hi, I’m Kenil. A passionate Flutter Application Developer based in Surat, India",
            fontSize: isMobile ? 18.sp : 20.sp,
            fontFamily: "LB",
          ),
          SizedBox(height: 16.h),
          CommonText(
            text:
                "Proficient Flutter Developer with 2 years and 5 months of experience in Android/iOS development using Dart.\n"
                "Skilled with tools like Xcode and Android Studio. Great at working with teams to deliver quality, high-performance apps.",
            fontSize: 14.sp,
            fontFamily: "IR",
            color: ConstColor.textColor.withValues(alpha: 0.7),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceBlock({
    required String title,
    required String year,
    required String description,
  }) {
    return FadeInUp(
      animate: true,
      from: 200,
      duration: Duration(milliseconds: 1000),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(text: title, fontSize: 20.sp, fontFamily: "LB"),
          SizedBox(height: 4.h),
          CommonText(
            text: year,
            fontSize: 16.sp,
            fontFamily: "LB",
            color: ConstColor.textColor.withValues(alpha: 0.5),
          ),
          SizedBox(height: 8.h),
          CommonText(
            text: description,
            fontSize: 14.sp,
            fontFamily: "IR",
            color: ConstColor.textColor.withValues(alpha: 0.7),
          ),
        ],
      ),
    );
  }
}
