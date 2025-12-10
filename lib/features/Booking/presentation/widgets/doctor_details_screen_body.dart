
import 'package:cure_team_1/features/Booking/presentation/widgets/price_and_book_apointmentbutton.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/scrollable_content.dart';
import 'package:flutter/material.dart';


class DoctorDetailsScreenBody extends StatelessWidget {
  const DoctorDetailsScreenBody({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return const Stack(
        children: [
           ScrollableContent(),
           PriceAndBookActionFooterButton()
        ],
      
    );
  }
}
