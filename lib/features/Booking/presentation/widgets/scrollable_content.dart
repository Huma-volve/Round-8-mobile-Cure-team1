
import 'package:cure_team_1/features/Booking/presentation/widgets/about_me_section.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/add_review_and_rating.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/comment_desplay.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/doctor_details_screen_appbar.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/doctor_details_widget.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/review_and_rating_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScrollableContent extends StatelessWidget {
  const ScrollableContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
  child:    ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h,),
            const DoctorDetailsScreenAppBar(),
            const DoctorDetailsWidget(),
           SizedBox(height: 16.h,),
           const ReviewAndRatingSection(),
           SizedBox(height: 41.h,),
           const AboutMeSection(),
            SizedBox(height: 24.h,),
           const AddReviewAndRating(),
           SizedBox(height: 24.h,),
           const   CommentDesplay()
          ],
        ),
      ],
    ));
  }
}