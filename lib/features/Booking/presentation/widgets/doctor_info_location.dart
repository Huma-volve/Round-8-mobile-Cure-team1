import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorInfoLocation extends StatelessWidget {
  const DoctorInfoLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 18.h,
          width: 18.h,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.location))),
        ),
        Text(
          '129,El-Nasr Street, Cairo ',
          style: AppTextStyles.styleRegular14,
        ),
      ],
    );
  }
}
