import 'package:cure_team_1/core/theme/app_colors.dart';
import 'package:cure_team_1/core/theme/app_text_styles.dart';
import 'package:cure_team_1/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ButtonWithGoogle extends StatelessWidget {
  ButtonWithGoogle({super.key, required this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: AppColors.borderButton,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.iconGgogle),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'Sign in with Google',
              style: AppTextStyles.styleMedium16,
            )
          ],
        ),
      ),
    );
  }
}
