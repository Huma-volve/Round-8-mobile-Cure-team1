import 'package:cure_team_1/core/constants/app_route.dart';
import 'package:cure_team_1/core/theme/app_colors.dart';
import 'package:cure_team_1/core/theme/app_text_styles.dart';
import 'package:cure_team_1/core/utils/app_images.dart';
import 'package:cure_team_1/core/widgets/custome_button.dart';
import 'package:cure_team_1/core/widgets/button_with_google.dart';
import 'package:cure_team_1/features/auth/login/presentation/pages/widgets/divider_login.dart';
import 'package:cure_team_1/core/widgets/phone_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.loginImage)),
          SizedBox(
            height: 32.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Enter your phone number',
                style: AppTextStyles.stylegeorgia20,
              ),
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          const PhoneInputExample(),
          SizedBox(
            height: 32.h,
          ),
          CustomeButton(
              text: 'Sign in with your Phone Number',
              color: AppColors.primaryColor,
              onTap: () {}),
          SizedBox(
            height: 16.h,
          ),
          const DividerLogin(),
          SizedBox(
            height: 16.h,
          ),
          ButtonWithGoogle(
            onTap: () {},
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an account?   ',
                style: AppTextStyles.styleRegular12,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRoute.signupPage);
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
