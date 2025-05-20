
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/ui/about_page.dart';
import 'package:portfolio/ui/homepage.dart';

class ScrollPageController extends GetxController {
  final scrollController = ScrollController();
  final pageHeight = 1024.0;

  final List<Widget> pages = [Homepage(),AboutPage()];

  void scrollToPage(int pageIndex) {
    scrollController.animateTo(
      pageIndex * pageHeight,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
