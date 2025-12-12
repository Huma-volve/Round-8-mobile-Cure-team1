import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/core/style/theme/app_theme.dart';
import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_widgets.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  // Controllers
  // Controllers
  final _nameController = TextEditingController(text: 'Seif Mohamed');
  final _emailController = TextEditingController(
    text: 'seif_mohamed@Example.com',
  );
  final _phoneController = TextEditingController(text: '+20 123 456 7890');

  // Date selection values
  String? _selectedDay = '29';
  String? _selectedMonth = 'July';
  String? _selectedYear = '2024';

  @override
  void initState() {
    super.initState();
  }

  // Generate lists for dropdowns
  List<String> get _days =>
      List.generate(31, (index) => (index + 1).toString());
  List<String> get _months => [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December',
      ];
  // Generate years from 1950 to current year
  List<String> get _years => List.generate(
        DateTime.now().year - 1950 + 1,
        (index) => (1950 + index).toString(),
      ).reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsLight.scaffoldBackground,
      appBar: AppBar(
        title: Text('Edit Profile', style: AppTextStyles.styleSmall26),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorsLight.textMain,
            size: 20.sp,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
        child: Column(
          children: [
            // Profile Image
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50.r,
                    backgroundImage: const NetworkImage(
                      'https://i.pravatar.cc/150?u=seif',
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                        color: ColorsLight.primaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2.w),
                      ),
                      child: SvgPicture.asset(
                        Assets.profileCameraEdit,
                        width: 16.w,
                        height: 16.w,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.h),

            // Form Fields
            CustomTextField(
              hintText: 'Full Name',
              controller: _nameController,
              prefixWidget: Padding(
                padding: EdgeInsets.all(12.r),
                child: SvgPicture.asset(
                  Assets.profileProfile,
                  width: 24.w,
                  height: 24.w,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            CustomTextField(
              hintText: 'Email',
              controller: _emailController,
              prefixWidget: Padding(
                padding: EdgeInsets.all(12.r),
                child: SvgPicture.asset(
                  Assets.profileMdiEmail,
                  width: 24.w,
                  height: 24.w,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            CustomTextField(
              hintText: 'Phone Number',
              controller: _phoneController,
              prefixWidget: Padding(
                padding: EdgeInsets.all(12.r),
                child: SvgPicture.asset(
                  Assets.profileFlagEgyptEdit,
                  width: 24.w,
                  height: 24.w,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Select your birthday',
                  style: AppTextStyles.styleLarge26),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _buildDropdown(
                    value: _selectedDay,
                    items: _days,
                    hint: 'Day',
                    onChanged: (val) => setState(() => _selectedDay = val),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildDropdown(
                    value: _selectedMonth,
                    items: _months,
                    hint: 'Month',
                    onChanged: (val) => setState(() => _selectedMonth = val),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildDropdown(
                    value: _selectedYear,
                    items: _years,
                    hint: 'Year',
                    onChanged: (val) => setState(() => _selectedYear = val),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 48),
            CustomButton(
              text: 'Edit Profile',
              onPressed: () {
                // Save Logic
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Changes Saved!')));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown({
    required String? value,
    required List<String> items,
    required String hint,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      height: 54, // Fixed height to match likely TextField height
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: ColorsLight.inputFill,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.transparent,
        ), // Placeholder for potential border
      ),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: items.contains(value) ? value : null,
            hint: Text(
              hint,
              style: AppTextStyles.styleLarge16.copyWith(fontSize: 14),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: ColorsLight.textGrey, // Match other icons
              size: 20,
            ),
            isExpanded: true,
            menuMaxHeight: 300,
            borderRadius: BorderRadius.circular(12),
            dropdownColor: Colors.white,
            style: AppTextStyles.styleLarge16.copyWith(fontSize: 14),
            items: items.map((String val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val, overflow: TextOverflow.ellipsis),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
