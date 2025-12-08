
import 'package:cure_team_1/core/theme/app_text_styles.dart';
import 'package:cure_team_1/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsScreenAppBar extends StatelessWidget {
  const DoctorDetailsScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24.h,
          width: 24.w,
          decoration:const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.arrow))
          ),
        ),
        const Spacer(),
        Text('Doctor Details',style: AppTextStyles.styleRegular24,),
          const Spacer(),
        Image.asset(AppImages.message),
      ],
    );
  }
}