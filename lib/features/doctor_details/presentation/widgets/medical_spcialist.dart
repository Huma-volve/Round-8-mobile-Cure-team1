import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/images/app_images.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MedicalSpecialty extends StatelessWidget {
  const MedicalSpecialty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width - 174.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
       
          Text('Pulmonologist',style: AppTextStyles.styleRegular14,),
      const   Spacer(),
            Container(
           height: 40.h,
           width: 40.w,
           decoration: BoxDecoration(
             image: const DecorationImage(image: AssetImage(AppImages.favorite)),
             border: Border.all(width: 3,color: ColorsLight.offWhite),
             borderRadius: BorderRadius.circular(40)
           ),
         ),
        ],
      ),
    );
  }
}
