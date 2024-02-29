// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/components/space.dart';
import '../../../../core/utils/components/text_field.dart';

class RowItem extends StatefulWidget {
  const RowItem({
    super.key,
    required this.lable,
    required this.hint,
    required this.controller,
  });

  final String lable;
  final String hint;
  final TextEditingController controller;

  @override
  State<RowItem> createState() => _RowItemState();
}

class _RowItemState extends State<RowItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.lable,
          style: AppStyles.blueLableStyle,
        ),
        const VerticalSpace(16),
        Container(
          width: 398.w,
          height: 54.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: AppColors.lightSecondry),
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.hint,
                style: AppStyles.blueLableStyle.copyWith(fontSize: 14),
              ),
              InkWell(
                onTap: onTab,
                child: Image.asset(
                  AppImages.edit,
                  color: AppColors.secondry,
                ),
              ),
            ],
          ),
        ),
        const VerticalSpace(24),
      ],
    );
  }

  onTab() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content:
                CustomTextField(hint: 'hint', controller: widget.controller),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilledButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text('ok'),
                      )),
                  FilledButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text('discard'),
                      )),
                ],
              ),
            ],
          );
        });
  }
}
