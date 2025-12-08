import 'package:cure_team_1/core/theme/app_colors.dart';
import 'package:cure_team_1/features/onboarding/data/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingDots extends StatelessWidget {
  final int currentIndex;

  const OnboardingDots({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        OnboardingModel.onboardingView.length,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          width: currentIndex == index ? 24 : 8,
          height: 8.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: currentIndex == index
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
