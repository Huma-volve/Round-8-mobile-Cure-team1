import 'package:cure_team_1/features/Booking/presentation/widgets/doctor_details_screen_appbar.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/doctor_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bookappointment extends StatelessWidget {
  const Bookappointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50.h,),
            const BookingAppBar(title: 'Book Appointment',ismessageIconEnable: true,),
            const DoctorDetailsWidget(),
        ],
      ),
    );
  }
}