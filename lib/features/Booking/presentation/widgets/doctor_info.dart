
import 'package:cure_team_1/core/theme/app_text_styles.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/doctor_info_location.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/medical_spcialist.dart';
import 'package:flutter/material.dart';


class DoctorInfo extends StatelessWidget {
  const DoctorInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text('Dr. Jessica Turner',style: AppTextStyles.styleRegular20,),
    
     const MedicalSpecialty(),


    const DoctorInfoLocation(),
     
      ],
    );
  }
}


