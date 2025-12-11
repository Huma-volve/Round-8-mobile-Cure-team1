import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingActionButton extends StatelessWidget {
  const BookingActionButton({
    super.key, required this.bottonName, required this.isCnaceledButton,
  });
final String bottonName;
final bool isCnaceledButton;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 40.h,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2.w,color:isCnaceledButton? ColorsLight.blueGray:ColorsLight.royalBlue),
      ),
      child: Center(
        child: Text(bottonName,style: AppTextStyles.montserratRegular14.copyWith(color: isCnaceledButton?ColorsLight.blueGray:ColorsLight.royalBlue),
          ),
      ),
    );
  }
}