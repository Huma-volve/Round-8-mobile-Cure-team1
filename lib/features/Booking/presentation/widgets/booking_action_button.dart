import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingActionButton extends StatelessWidget {
  const BookingActionButton({
    super.key,
    required this.bottonName,
    required this.isCnaceledButton,
  });
  final String bottonName;
  final bool isCnaceledButton;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialogImplement(context);
      },
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 2.w,
              color: isCnaceledButton
                  ? ColorsLight.blueGray
                  : ColorsLight.royalBlue),
        ),
        child: Center(
          child: Text(
            bottonName,
            style: AppTextStyles.montserratRegular14.copyWith(
                color: isCnaceledButton
                    ? ColorsLight.blueGray
                    : ColorsLight.royalBlue),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showDialogImplement(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
              child: Container(
                height: 475.h,
                width: 341.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(48)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 48.w, vertical: 32.h),
                  child: Column(
                    children: [
                      const DialogAlertWidget(),
                      SizedBox(height: 32.h,),
                      Text(
                        'Warning!',
                        style: AppTextStyles.interSemiBold20
                            .copyWith(color: ColorsLight.vividYellow),
                      ),
                      SizedBox(height: 8.h,),
                      Text(
                        'Cancellation must be made at least 24 hours in advance to receive a refund',
                        style: AppTextStyles.interRegular14
                            .copyWith(color: ColorsLight.blueGray),
                      ),
                      SizedBox(height: 32.h,),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Are you sure?',
                            style: AppTextStyles.interRegular14
                                .copyWith(color: ColorsLight.blueGray),
                          )),
SizedBox(height: 16.h,),
                    const  DialogConfirmButton()
                    ],
                  ),
                ),
              ),
            ));
  }
}

class DialogConfirmButton extends StatelessWidget {
  const DialogConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorsLight.prussianBlue,
            fixedSize: Size(245.w, 48.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        onPressed: () {},
        child: Text(
          'yes,Cancel',
          style: AppTextStyles.interMedum16.copyWith(color: Colors.white),
        ));
  }
}

class DialogAlertWidget extends StatelessWidget {
  const DialogAlertWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131.h,
      width: 131.w,
      decoration: BoxDecoration(
          color: ColorsLight.creamyLight,
          borderRadius: BorderRadius.circular(107)),
      child: Center(child: Image.asset(Assets.resourceImagesAlert02)),
    );
  }
}
