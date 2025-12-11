import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/custom_widgets.dart';
import 'password_management_screen.dart'; // Placeholder

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
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
        centerTitle: true,
        title: Text('Settings', style: AppTextStyles.header),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0.r),
        child: Column(
          children: [
            _buildSettingItem(
              context,
              title: 'Password Management',
              assetPath: Assets.settingsLockKeyhole,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PasswordManagementScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            _buildSettingItem(
              context,
              title: 'Delete Account',
              // Using userRounded or similar as we don't have a specific delete-user SVG
              // If 'minus-sign' was relevant I'd combine it, but simple User icon is safer fallback than broken asset
              assetPath: Assets.settingsUserRounded,
              onTap: () {
                _showDeleteAccountDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem(
    BuildContext context, {
    required String title,
    required String assetPath,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inputFill,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: ListTile(
        onTap: onTap,
        leading: SvgPicture.asset(
          assetPath,
          colorFilter: const ColorFilter.mode(
            AppColors.textMain,
            BlendMode.srcIn,
          ),
          width: 24.w,
          height: 24.w,
        ),
        title: Text(title, style: AppTextStyles.subHeader),
        trailing: Icon(
          Icons.chevron_right,
          color: AppColors.textGrey,
          size: 24.sp,
        ),
      ),
    );
  }

  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(24.0.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.delete_outline,
                size: 48.sp,
                color: Colors.purple,
              ), // Placeholder for the nice icon in design
              SizedBox(height: 16.h),
              Text(
                'Delete account',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textMain,
                ),
              ),
              SizedBox(height: 8.h),
              const Divider(),
              SizedBox(height: 16.h),
              Text(
                'Are you sure you want to delete your account?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, color: AppColors.textGrey),
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Cancel',
                      backgroundColor: Colors.grey.shade300,
                      textColor: AppColors.textMain,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: CustomButton(
                      text: 'Yes, delete',
                      onPressed: () {
                        Navigator.pop(context);
                        // Perform delete logic
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Account deleted successfully'),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
