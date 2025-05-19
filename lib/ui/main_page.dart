import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/homepage.dart';

import '../contrller.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final ScrollPageController controller = Get.put(ScrollPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: Column(
          children: List.generate(4, (index) => SizedBox(
            height: 1024,
            child: Homepage(),
          )),
        ),
      ),
    );
  }
}
