import 'package:cure_team_1/core/theme/app_colors.dart';
import 'package:cure_team_1/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
            activeColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(
                color: AppColors.primaryColor,
                width: 2,
              ),
            ),
            value: ischecked,
            onChanged: (value) {
              setState(() {
                ischecked = value ?? false;
              });
            }),
        Text(
          'Remember Me',
          style: AppTextStyles.styleMedium16,
        ),
      ],
    );
  }
}
