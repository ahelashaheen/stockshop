import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/cart screen/presentation/pages/cart_screen.dart';
import '../app_colors.dart';
import '../app_images.dart';
import 'open_container.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return OpenContainers(
      closedWidget: Image.asset(
        AppImages.cart,
        color: AppColors.secondry,
        height: 30.h,
        width: 30.w,
      ),
      openedWidget: const CartScreen(),
    );
  }
}
