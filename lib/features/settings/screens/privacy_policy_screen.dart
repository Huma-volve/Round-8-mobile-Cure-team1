import 'package:cure_team_1/core/style/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_widgets.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        title: Text('Privacy Policy', style: AppTextStyles.header),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.textMain,
            size: 20.sp,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Last Updated: 19/11/2024', style: AppTextStyles.bodyGrey),
            SizedBox(height: 16.h),
            Text(
              'Welcome to Cure. Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your personal information when you use our doctor appointment booking app.',
              style: AppTextStyles.bodyGrey,
            ),
            SizedBox(height: 24.h),
            Text('terms & conditions', style: AppTextStyles.header),
            SizedBox(height: 16.h),
            Text(
              'By registering, accessing, or using this app, you confirm that you are at least 18 years old (or have parental/guardian consent if younger) and agree to be bound by these Terms and our Privacy Policy.\n\nYou agree to:\n\u2022 Use the app only for lawful purposes.\n\u2022 Provide accurate and complete information during registration and booking.\n\u2022 Not impersonate others or create fake accounts.\n\nYou may not:\n\u2022 Disrupt or interfere with the app\'s functionality.\n\u2022 Try to access data or systems not meant for you.\n\u2022 Use the app to harass or abuse doctors or staff.\n\nYour data is handled in accordance with our [Privacy Policy]. You are responsible for keeping your login credentials secure.',
              style: AppTextStyles.bodyGrey.copyWith(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
