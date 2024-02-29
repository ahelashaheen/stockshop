import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle welcomeSytle = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );
  static TextStyle whiteLableStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
  static TextStyle blueLableStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.onPrimary,
  );
  static TextStyle hintStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: AppColors.textFieldHint,
  );
  static TextStyle buttonTextStyle = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.secondry,
  );
  static TextStyle titleStyle = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.secondry,
  );
  static TextStyle erorStyle = GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: AppColors.redColor,
  );
  static TextStyle smallStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.primary,
  );
  static TextStyle smallLableStyle = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.secondry,
  );
}
