import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/main_page.dart';
import 'package:portfolio/utilitis/common_widget.dart';
import 'package:portfolio/utilitis/constant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: ConstColor.backgroundColor,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 1366 && constraints.maxHeight >= 700) {
              return MainPage(); // Desktop layout
            } else {
              return Scaffold(
                body: Center(
                  child: CommonText(
                    text: 'This app is only available on desktop browsers.',
                    fontSize: 18.sp,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }
          },
        ),
    );
  }
}
