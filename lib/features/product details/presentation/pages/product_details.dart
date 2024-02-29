import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/components/cart.dart';
import '../../../../core/utils/components/counter_button.dart';
import '../../../../core/utils/components/space.dart';
import '../widgets/carousel_slider.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.detailsTitle),
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
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CarouselSliderProduct(),
            const VerticalSpace(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'kkkkkkkk',
                  style: AppStyles.blueLableStyle,
                ),
                const HorizontalSpace(177),
                Text(
                  '${AppStrings.egp} 1280',
                  style: AppStyles.blueLableStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
            const VerticalSpace(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 102,
                  height: 34,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: AppColors.lightSecondry,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '1235 Sold',
                      style: AppStyles.smallLableStyle,
                    ),
                  ),
                ),
                const HorizontalSpace(16),
                Image.asset(AppImages.star),
                Text(
                  '4.8(7,500)',
                  style: AppStyles.smallLableStyle,
                ),
                const HorizontalSpace(64),
                const CounterButton(),
              ],
            ),
            const VerticalSpace(16),
            Text(AppStrings.description, style: AppStyles.blueLableStyle),
            const VerticalSpace(78),
            Text(AppStrings.size, style: AppStyles.blueLableStyle),
            const VerticalSpace(59),
            Text(AppStrings.color, style: AppStyles.blueLableStyle),
            const VerticalSpace(91),
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
                      fixedSize: Size(267.w, 48.h)),
                  onPressed: () {},
                  child: Center(
                    child:
                        Text(AppStrings.add, style: AppStyles.whiteLableStyle),
                  ),
                ),
              ],
            ),
            const VerticalSpace(10),
          ],
        ),
      ),
    );
  }
}
