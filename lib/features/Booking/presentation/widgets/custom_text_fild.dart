import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 8,
      decoration: InputDecoration(
          hintText: 'Write your review',
          hintStyle: AppTextStyles.styleLarge16
              .copyWith(fontSize: 14, color: ColorsLight.blueGray),
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder()),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: ColorsLight.blueGray),
      borderRadius: BorderRadius.circular(15));
}
