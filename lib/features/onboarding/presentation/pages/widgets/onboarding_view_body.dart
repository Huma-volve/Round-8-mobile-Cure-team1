import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 37.h,
        ),
        Center(
          child: Image.asset(
            Assets.resourceImagesOnboarding1,
            width: 340.w,
            height: 320.h,
          ),
        ),
        SizedBox(
          height: 74.h,
        ),
        const Text('Book Your Appointment Easily')
      ],
    );
  }
}
