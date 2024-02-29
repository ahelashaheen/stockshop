// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool? isPassword;
  final bool? isShow;
  final VoidCallback? onPressed;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.hint,
    this.isPassword,
    this.isShow,
    this.onPressed,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword ?? false ? (isShow ?? false) : false,
      validator: (value) {
        if (value?.trim().isEmpty ?? false) {
          return 'Field can\'t be empty';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: isPassword ?? false
            ? InkWell(
                onTap: onPressed,
                child: Icon(
                  !(isShow ?? false) ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.textFieldHint,
                  size: 24.sp,
                ),
              )
            : null,
      ),
    );
  }
}
