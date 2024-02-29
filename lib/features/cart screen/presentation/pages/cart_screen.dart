import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/components/cart.dart';
import '../../../../core/utils/components/space.dart';
import '../widgets/list_view.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.cart),
          actions: [
            ImageIcon(
              const AssetImage(
                AppImages.search,
              ),
              size: 24.sp,
              color: AppColors.secondry,
            ),
            const HorizontalSpace(32),
            const Cart(),
            const HorizontalSpace(16),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            children: [
              const ListViewCart(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        AppStrings.total,
                        style: AppStyles.erorStyle
                            .copyWith(color: AppColors.lightSecondry),
                      ),
                      const VerticalSpace(12),
                      Text(
                        '${AppStrings.egp} 1280',
                        style: AppStyles.blueLableStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  const HorizontalSpace(33),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondry,
                        fixedSize: Size(270.w, 48.h)),
                    onPressed: () {},
                    child: Center(
                      child: Text(AppStrings.check,
                          style: AppStyles.whiteLableStyle),
                    ),
                  ),
                ],
              ),
              const VerticalSpace(98),
            ],
          ),
        ));
  }
}
