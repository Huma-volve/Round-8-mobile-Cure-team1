
import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddReview extends StatelessWidget {
  const AddReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Text('Reviews and Rating',style: AppTextStyles.georgiaRegular20,),
      const Spacer(),
    
      SizedBox(
       width: 20.w,
       height: 20.h,
       child: Image.asset(Assets.resourceImagesAddReview)),
       SizedBox(width: 5.w,),
       TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero
        ),
         onPressed: () { 


          
          }, child: Text('add review',style: AppTextStyles.montserratRegular14.copyWith(color: ColorsLight.royalBlue),),)
     ],
    );
  }
}