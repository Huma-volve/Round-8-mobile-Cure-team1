import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColors {
  static const Color primaryBlue = Color(
    0xFF196EEE,
  ); // Estimated from "Yes, Logout" button
  static const Color textMain = Color(0xFF101623); // Dark text
  static const Color textGrey = Color(0xFFA1A8B0); // Subtitles, placeholders
  static const Color background = Colors.white;
  static const Color scaffoldBackground = Colors.white;
  static const Color inputFill = Color(
    0xFFF9FAFB,
  ); // Light grey input background
  static const Color border = Color(0xFFE5E7EB);
  static const Color error = Colors.redAccent;

  // Gradients or special colors can be added here
}

class AppTextStyles {
  static TextStyle header = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textMain,
    fontFamily: 'Inter', // Assuming Inter or similar
  );

  static TextStyle subHeader = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textMain,
  );

  static TextStyle body = TextStyle(fontSize: 14.sp, color: AppColors.textMain);

  static TextStyle bodyGrey = TextStyle(
    fontSize: 14.sp,
    color: AppColors.textGrey,
  );
}
