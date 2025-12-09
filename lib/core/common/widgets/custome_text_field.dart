import 'package:cure_team_1/core/theme/app_colors.dart';
import 'package:cure_team_1/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomeTextField extends StatefulWidget {
  const CustomeTextField({
    super.key,
    required this.text,
    this.perfixIcon,
    this.suffixIcon,
    required this.controller,
  });
  final String text;
  final Widget? perfixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;

  @override
  State<CustomeTextField> createState() => _CustomeTextFieldState();
}

class _CustomeTextFieldState extends State<CustomeTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      obscureText: false,
      decoration: InputDecoration(
          hintText: widget.text,
          hintStyle: AppTextStyles.styleMedium16,
          prefixIcon: widget.perfixIcon,
          suffixIcon: widget.suffixIcon,
          filled: true,
          fillColor: AppColors.offWhite,
          border: InputBorder.none,
          enabledBorder: InputBorder.none),
    );
  }
}
