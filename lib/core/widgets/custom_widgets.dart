import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/core/style/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorsLight.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final Widget? prefixWidget;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.prefixWidget,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
    this.keyboardType,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsLight.inputFill,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        onChanged: onChanged,
        style: TextStyle(fontSize: 14.sp),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.styleLarge18.copyWith(fontSize: 14.sp),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 14.h,
          ),
          prefixIcon: prefixWidget ??
              (prefixIcon != null
                  ? Icon(prefixIcon, color: ColorsLight.textGrey, size: 24.sp)
                  : null),
          suffixIcon:
              suffixIcon, // Suffix widget sizing handled by caller or default
        ),
      ),
    );
  }
}

// SettingsTile might be used? I'll refactor just in case.
class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Widget? trailing;
  final Color? iconColor;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.trailing,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 4.h),
      leading: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: (iconColor ?? ColorsLight.primaryColor).withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child:
            Icon(icon, color: iconColor ?? ColorsLight.textMain, size: 20.sp),
      ),
      title: Text(
        title,
        style: AppTextStyles.styleLarge20.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
        ),
      ),
      trailing: trailing ??
          Icon(Icons.chevron_right, color: ColorsLight.textGrey, size: 24.sp),
    );
  }
}
