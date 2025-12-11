import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_theme.dart';

import 'cards_screen.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  int? _selectedWallet; // Null means no wallet selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        title: Text('Payment Method', style: AppTextStyles.header),
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
            Text('Credit & Debit Card', style: AppTextStyles.subHeader),
            SizedBox(height: 16.h),
            _buildCardDisplay(
              'Debit Card',
              'Bank Name',
              true,
            ), // Default to Visa for now
            SizedBox(height: 16.h),
            _buildCardDisplay('Credit Card', 'Bank Name', false),

            SizedBox(height: 32.h),
            Text('More Payment Options', style: AppTextStyles.subHeader),
            SizedBox(height: 16.h),

            // Wallet Options
            Container(
              decoration: BoxDecoration(
                color: AppColors.inputFill,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  _buildWalletItem(0, 'Apple Pay', Assets.paymentLogosApplePay),
                  Divider(height: 1.h, color: Colors.grey.shade200),
                  _buildWalletItem(1, 'Paypal', Assets.paymentIcOutlinePaypal),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(24.0.r),
        child: SizedBox(
          width: double.infinity,
          height: 50.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade200,
              foregroundColor: AppColors.textMain, // For text/icon color
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              side: BorderSide(color: Colors.grey.shade300),
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ), // Add horizontal padding
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CardsScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.edit, size: 20.sp),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardDisplay(String type, String title, bool isVisa) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inputFill,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.inputFill),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          isVisa
              ? Assets
                  .paymentVisa // Assuming visa handles 'Debit Card' case visually roughly
              : Assets
                  .paymentVisa, // Fallback since mastercard asset is missing
          width: 32.w,
          height: 20.h, // Adjusted size
        ),
        // Wait, for 'Debit Card' vs 'Credit Card', the prompt implies these are linked cards.
        // The icons in screenshot are generic card icons or brand icons.
        // I will use Visa for one and maybe another asset if available, but for now Visa is fine or just leave as is.
        // Actually, the previous step used Assets.visa, so I stick with it.
        // For the second one, I will leave it as AppAssets.visa or check if I have mastercard. I don't.
        // I'll keep the logic simple.
        title: Text(type, style: AppTextStyles.subHeader),
        trailing: Icon(
          Icons.chevron_right,
          color: AppColors.textGrey,
          size: 24.sp,
        ),
      ),
    );
  }

  Widget _buildWalletItem(int index, String name, String assetPath) {
    final isSelected = _selectedWallet == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedWallet = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent, // Background handled by parent container
          // Border logic moved to visual indicator or just highlight?
          // Design usually shows radio button or check.
          // The screenshot has a radio button selection style.
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          leading: SvgPicture.asset(assetPath, width: 24.w, height: 24.w),
          title: Text(name, style: AppTextStyles.subHeader),
          trailing: Container(
            width: 20.w,
            height: 20.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? AppColors.primaryBlue : Colors.grey,
                width: 2.w,
              ),
            ),
            padding: EdgeInsets.all(2.r),
            child: isSelected
                ? CircleAvatar(backgroundColor: AppColors.primaryBlue)
                : null,
          ),
        ),
      ),
    );
  }
}
