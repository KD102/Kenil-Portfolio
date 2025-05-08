import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:portfolio/ui/tabs.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20.h,),
          Tabs()
        ],
      ),
    );
  }
}


// class HoverAppBar extends StatefulWidget {
//   const HoverAppBar({super.key});
//
//   @override
//   State<HoverAppBar> createState() => _HoverAppBarState();
// }
//
// class _HoverAppBarState extends State<HoverAppBar> {
//   final RxBool _isHovered = false.obs;
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return MouseRegion(
//         onEnter: (_) => _isHovered.value = true,
//         onExit: (_) => _isHovered.value = false,
//         child: AnimatedContainer(
//           duration: const Duration(milliseconds: 300),
//           height: _isHovered.value ? 80 : 60,
//           padding: EdgeInsets.symmetric(horizontal: 20),
//           color: _isHovered.value ? Colors.blueAccent : Colors.blue,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }

