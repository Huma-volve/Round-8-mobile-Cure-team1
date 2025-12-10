

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/style/images/app_images.dart';

class DoctorImage extends StatelessWidget {
  const DoctorImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        
        
        Container(
          height: 113.h,
          width: 113.w,
          decoration: BoxDecoration(
            
            color: Colors.red,
            borderRadius: BorderRadius.circular(60)
          ),
        ),
        Positioned(
          bottom: 5.h,
          right: -6.w,
          child: Container(
            height: 24.h,
            width: 24.w,
            decoration: BoxDecoration(
              image: DecorationImage(image: 
              AssetImage(AppImages.checked))
            ),
          ),
        ),
      ],
    );
  }
}
