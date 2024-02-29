// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/components/space.dart';
import '../../domain/entities/CategoryAndBrandEntity.dart';

class ListViewW extends StatelessWidget {
  List<DataEntity> brands;

  ListViewW({
    required this.brands,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                width: 165.w,
                height: 130.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(brands[index].image ?? ""),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const HorizontalSpace(15);
        },
      ),
    );
  }
}
