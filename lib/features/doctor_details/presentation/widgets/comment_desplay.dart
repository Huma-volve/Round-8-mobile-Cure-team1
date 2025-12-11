import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/features/doctor_details/presentation/widgets/comment_user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentDesplay extends StatelessWidget {
  const CommentDesplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 4,color: ColorsLight.lightGray),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        children: [
          const CommentUserInfo(),
          SizedBox(height: 9.h,),
          Text(comment,style: AppTextStyles.montserratMedum16,),
        ],
      ),
    );
  }
}




String comment='Excellent service! Dr. Jessica Turner was attentive and thorough. The clinic was clean, and the staff were friendly. Highly recommend for in-person care!';