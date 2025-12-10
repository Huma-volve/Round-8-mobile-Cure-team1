
import 'package:cure_team_1/core/constants/app_route.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/custom_elevated_button.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PriceAndBookActionFooterButton extends StatelessWidget {
  const PriceAndBookActionFooterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
     bottom: 0,
     left: 0,
     right: 0,
      child: Card(
       elevation: 10,
        child: Container(
         height: 144,
         width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.only(top: 17.h,left: 24.w,right: 24.w),
          child: Column(
           children: [
         const    PriceWidget(),
         SizedBox(height: 15.h,),
              CustomElevatedButton(title: 'Book Appointment',onPressed: () => context.go(AppRoute.bookappointment),)      
           ],
          ),
        ),
        ),
      ),
    );
  }
}