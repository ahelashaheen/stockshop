// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/components/open_container.dart';
import '../../../../core/utils/components/space.dart';
import '../../../product details/presentation/pages/product_details.dart';
import '../cubit/category_tab_cubit.dart';

class GridViewWW extends StatelessWidget {
  const GridViewWW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (191 / 245),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16),
          itemCount: 12,
          itemBuilder: (context, index) {
            return OpenContainers(
              closedWidget: Container(
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: AppColors.lightSecondry),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          AppImages.temp,
                          fit: BoxFit.fill,
                          height: 128.h,
                          width: 191.w,
                        ),
                        Positioned(
                          top: 3.h,
                          right: 3.w,
                          child: BlocProvider(
                            create: (BuildContext context) =>
                                CategoryTabCubit(),
                            child: BlocConsumer<CategoryTabCubit,
                                CategoryTabState>(
                              listener: (context, state) {},
                              builder: (context, state) {
                                return InkWell(
                                  onTap: CategoryTabCubit.get(context)
                                      .makeFavorite,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: ShapeDecoration(
                                      color: AppColors.primary,
                                      shape: const OvalBorder(),
                                    ),
                                    child: Center(
                                      child: ImageIcon(
                                        AssetImage(CategoryTabCubit.get(context)
                                                .isFavorite
                                            ? AppImages.heart
                                            : AppImages.favorite),
                                        color: AppColors.secondry,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppStrings.catItemEample,
                                style: AppStyles.blueLableStyle
                                    .copyWith(fontSize: 13)),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${AppStrings.egp} 1280',
                                  style: AppStyles.blueLableStyle
                                      .copyWith(fontSize: 14),
                                ),
                                const HorizontalSpace(16),
                                Text(
                                  '2000',
                                  style: AppStyles.smallLableStyle.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${AppStrings.review} (4.6) ',
                                  style: AppStyles.blueLableStyle
                                      .copyWith(fontSize: 14),
                                ),
                                Image.asset(
                                  AppImages.star,
                                  height: 15.h,
                                  width: 15.w,
                                ),
                                const Spacer(
                                  flex: 4,
                                ),
                                ImageIcon(
                                  const AssetImage(AppImages.plus),
                                  size: 24.sp,
                                  color: AppColors.secondry,
                                ),
                                const Spacer(),
                              ],
                            ),
                          ]),
                    )
                  ],
                ),
              ),
              openedWidget: const ProductDetails(),
            );
          }),
    );
  }
}
