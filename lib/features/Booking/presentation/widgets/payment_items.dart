
import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/features/Booking/presentation/widgets/payment_method_items_implement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodItems extends StatelessWidget {
  const PaymentMethodItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment Method',style: AppTextStyles.georgiaRegular20.copyWith(color: ColorsLight.prussianBlue),),
        SizedBox(height: 16.h,),
     const  PaymentMethodItemsImplement()
      
      
      ],
    );
  }
}