// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_styles.dart';
import '../../domain/entities/CategoryAndBrandEntity.dart';

class GridViewW extends StatelessWidget {
  List<DataEntity> categories;

  GridViewW(this.categories, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 288,
      width: double.infinity,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        categories[index].image ?? "",
                      ),
                      fit: BoxFit.cover,
                    ),
                    shape: const OvalBorder(),
                  ),
                ),
                Text(
                  categories[index].name ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.blueLableStyle,
                ),
              ],
            );
          }),
    );
  }
}
