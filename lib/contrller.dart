
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScrollPageController extends GetxController {
  final scrollController = ScrollController();
  final pageHeight = 1024.0;

  void scrollToPage(int pageIndex) {
    scrollController.animateTo(
      pageIndex * pageHeight,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
