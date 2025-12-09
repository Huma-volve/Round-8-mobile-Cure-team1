

import 'package:cure_team_1/features/Booking/presentation/widgets/doctor_details_screen_appbar.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/doctor_details_widget.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/review_and_rating_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsScreenBody extends StatelessWidget {
  const DoctorDetailsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 50.h,),
          const DoctorDetailsScreenAppBar(),
          const DoctorDetailsWidget(),
         SizedBox(height: 16.h,),
         const ReviewAndRatingSection()
        ],
      ),
    );
  }
}
