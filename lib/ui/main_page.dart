import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contrller.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final ScrollPageController controller = Get.put(ScrollPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        controller: controller.scrollController,
        child: Column(
          children: List.generate(controller.pages.length, (index) => SizedBox(
            height: 1024,
            child:controller.pages[index],
          )),
        ),
      ),
    );
  }
}
