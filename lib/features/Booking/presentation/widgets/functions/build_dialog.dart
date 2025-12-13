import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<dynamic> buildDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => Dialog(
            child: Container(
              height: 374.h,
              width: 341.w,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(48)),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    'Thanks for your review',
                    style: AppTextStyles.styleSmall20.copyWith(fontSize: 24),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(245.w, 48.h),
                          backgroundColor: ColorsLight.primaryColor),
                      onPressed: () {},
                      child: Text(
                        'Done',
                        style: AppTextStyles.styleLarge16
                            .copyWith(color: Colors.white),
                      )),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Back to Home',
                    style: AppTextStyles.styleLarge16,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                ],
              ),
            ),
          ));
}
