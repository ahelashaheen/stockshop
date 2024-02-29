import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';
import '../app_images.dart';
import '../app_styles.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122.w,
      height: 42.h,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AppColors.secondry,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(AppImages.substruct),
            Text('1',
                textAlign: TextAlign.center, style: AppStyles.whiteLableStyle),
            Image.asset(AppImages.plusC),
          ],
        ),
      ),
    );
  }
}
