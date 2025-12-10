import 'package:cure_team_1/core/common/widgets/custome_appbar.dart';
import 'package:cure_team_1/core/common/widgets/custome_button.dart';
import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';

import 'package:cure_team_1/features/auth/otp/presentation/pages/widgets/otp_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
      child: Column(
        children: [
          const CustomeAppbar(title: 'OTP Code Verification'),
          SizedBox(
            height: 70.h,
          ),
          Text(
            'Code has been send to +02 010 *** **88',
            style: AppTextStyles.styleMedium16,
          ),
          OtpItem(),
          Column(
            children: [
              Text(
                'Wrong code',
                style: AppTextStyles.styleRegular14.copyWith(color: Colors.red),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend',
                      style: AppTextStyles.styleRegular14
                          .copyWith(color: ColorsLight.primaryColor),
                    ),
                  ),
                  Text(
                    'or',
                    style: AppTextStyles.styleRegular14,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Enter another phone number',
                      style: AppTextStyles.styleRegular14
                          .copyWith(color: ColorsLight.primaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          CustomeButton(
              text: 'Verify', color: ColorsLight.primaryColor, onTap: () {})
        ],
      ),
    );
  }
}
