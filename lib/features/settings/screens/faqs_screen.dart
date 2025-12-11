import 'package:cure_team_1/core/style/theme/app_theme.dart';
import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        title: Text('FAQs', style: AppTextStyles.header),
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
          children: [
            _buildExpansionTile(
              'What is this app used for?',
              'This app allows you to search for doctors, book appointments, and consult in person easily from your phone.',
              true,
            ),
            SizedBox(height: 16.h),
            _buildExpansionTile(
              'Is the app free to use?',
              'Yes, the app is free to download and use for booking appointments.',
              false,
            ),
            SizedBox(height: 16.h),
            _buildExpansionTile(
              'How can I find a doctor?',
              'You can search by name, specialty, or location.',
              false,
            ),
            SizedBox(height: 16.h),
            _buildExpansionTile(
              'Can I cancel my appointment?',
              'Yes, you can cancel up to 24 hours before.',
              false,
            ),
            SizedBox(height: 16.h),
            _buildExpansionTile(
              'What payment are supported',
              'We support Credit Cards, PayPal, and Apple Pay.',
              false,
            ),
            SizedBox(height: 16.h),
            _buildExpansionTile(
              'How do I edit my profile?',
              'Go to Profile > Edit Profile.',
              false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile(String title, String content, bool isExpanded) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inputFill,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(title, style: AppTextStyles.subHeader),
          initiallyExpanded: isExpanded,
          trailing: SvgPicture.asset(
            Assets.settingsMinusSign,
            width: 24.w,
            height: 24.w,
            colorFilter: const ColorFilter.mode(
              AppColors.textMain,
              BlendMode.srcIn,
            ),
          ),
          childrenPadding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
          children: [Text(content, style: AppTextStyles.bodyGrey)],
        ),
      ),
    );
  }
}
