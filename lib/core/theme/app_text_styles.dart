import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  // ==================== GEORGIA ====================
  static const String _georgia = 'Georgian';

  static TextStyle georgiaH1 = TextStyle(
    fontFamily: _georgia,
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleMedium16 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xff6D7379));
  static TextStyle styleMedium16White = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: Colors.white);
  static TextStyle styleRegular24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'georgia',
  );
}
