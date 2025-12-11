import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/features/chat/data/modle/prfiledatils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Histroychat extends StatelessWidget {
  const Histroychat({super.key, required this.massage});
  final Prfiledatils? massage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorsLight.offWhite,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            leading: SizedBox(
              height: 60.h,
              width: 50.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  massage!.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  massage!.name,
                  style: AppTextStyles.styleRegular20,
                ),
                Text(
                  massage!.massage,
                  style: AppTextStyles.styleMedium17,
                ),
              ],
            ),
            trailing: Column(
              children: [
                Text(
                  massage!.time,
                  style: AppTextStyles.styleRegular12
                      .copyWith(color: Colors.green),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    height: 17.h,
                    width: 17.w,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '2',
                        style: AppTextStyles.styleRegular12
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
