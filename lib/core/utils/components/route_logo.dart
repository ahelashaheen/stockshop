import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_images.dart';

class RouteLoge extends StatelessWidget {
  const RouteLoge({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.blueroute,
      height: 26.h,
      width: 70.w,
      fit: BoxFit.fill,
    );
  }
}
