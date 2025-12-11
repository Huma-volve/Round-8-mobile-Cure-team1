
import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ApointMentAndReschedualWidget extends StatelessWidget {
  const ApointMentAndReschedualWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
          height: 20.h,
          child: Image.asset(Assets.resourceImagesCalendar02)),
      SizedBox(width: 8.w,),
          Text('Friday,July17-4:00pm',style: AppTextStyles.montserratMedum16.copyWith(color: ColorsLight.prussianBlue,fontSize: 14),),
         const Spacer(),
          TextButton(onPressed: (){
            GoRouter.of(context).pop();
          }, child: Text('Reschedule',style: AppTextStyles.montserratRegular14.copyWith(color: ColorsLight.royalBlue),))
      ],
    );
  }
}