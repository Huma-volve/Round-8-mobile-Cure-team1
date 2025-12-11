import 'package:cure_team_1/core/style/theme/app_theme.dart';
import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import flutter_svg
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_widgets.dart';
import '../../settings/screens/settings_screen.dart';
import '../../payment/screens/payment_methods_screen.dart';
import 'edit_profile_screen.dart';
import '../../settings/screens/faqs_screen.dart';
import '../../settings/screens/privacy_policy_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _notificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        title: Text('Profile', style: AppTextStyles.header),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.0.r),
        child: Column(
          children: [
            // User Info Card
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 30.r,
                backgroundImage: const NetworkImage(
                  'https://i.pravatar.cc/150?u=seif',
                ), // Placeholder
                backgroundColor: Colors.grey,
              ),
              title: Text('Seif Mohamed', style: AppTextStyles.header),
              subtitle: Text(
                '129,El-Nasr Street, Cairo',
                style: AppTextStyles.bodyGrey,
              ),
              trailing: Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  Icons.edit,
                  size: 20.sp,
                  color: AppColors.primaryBlue,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const EditProfileScreen()),
                );
              },
            ),
            SizedBox(height: 32.h),

            // Settings List
            Container(
              decoration: BoxDecoration(
                color: AppColors.inputFill,
                borderRadius: BorderRadius.circular(16.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              child: SwitchListTile(
                contentPadding: EdgeInsets.zero,
                secondary: SvgPicture.asset(
                  Assets.profileNotification,
                  width: 24.w,
                  height: 24.h,
                  colorFilter: const ColorFilter.mode(
                    AppColors.textMain,
                    BlendMode.srcIn,
                  ),
                ),
                title: Text('Notification', style: AppTextStyles.subHeader),
                value: _notificationEnabled,
                activeColor: Colors.green, // As per design
                onChanged: (val) {
                  setState(() {
                    _notificationEnabled = val;
                  });
                },
              ),
            ),
            SizedBox(height: 16.h),

            _buildMenuItem(
              assetPath: Assets.profileGroupAddCard,
              iconWidth: 24.w,
              title: 'Payment Method',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PaymentMethodsScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            _buildMenuItem(
              assetPath: Assets.profileHeart,
              title: 'Favorite',
              onTap: () {},
            ),
            SizedBox(height: 16.h),
            _buildMenuItem(
              assetPath: Assets.profileSettings,
              title: 'Settings',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsScreen()),
                );
              },
            ),
            SizedBox(height: 16.h),
            _buildMenuItem(
              assetPath: Assets.profileChat,
              title: 'FAQs',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const FAQsScreen()),
                );
              },
            ),
            SizedBox(height: 16.h),
            _buildMenuItem(
              assetPath: Assets.settingsLockKeyhole,
              title: 'Privacy Policy',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PrivacyPolicyScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 32.h),

            // Logout Button (Light red background style)
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red.withOpacity(0.05),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                ),
                onPressed: () {
                  // Show Logout Dialog
                  _showLogoutDialog(context);
                },
                icon: SvgPicture.asset(
                  Assets.profileLogout,
                  colorFilter: const ColorFilter.mode(
                    Colors.red,
                    BlendMode.srcIn,
                  ),
                ),
                label: Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required String assetPath,
    required String title,
    required VoidCallback onTap,
    double? iconWidth,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inputFill,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: ListTile(
        onTap: onTap,
        leading: SvgPicture.asset(
          assetPath,
          width: iconWidth ?? 24.w,
          height: iconWidth ?? 24.w,
          colorFilter: const ColorFilter.mode(
            AppColors.textMain,
            BlendMode.srcIn,
          ),
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

  void _showLogoutDialog(BuildContext context) {
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
              Text(
                'Logout',
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
                'Are you sure you want to log out?',
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
                      text: 'Yes, Logout',
                      onPressed: () {
                        Navigator.pop(context);
                        // Perform logout implementation
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
