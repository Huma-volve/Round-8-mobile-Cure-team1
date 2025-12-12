import 'package:cure_team_1/core/style/colors/colors_light.dart';
import 'package:cure_team_1/core/style/theme/app_text_styles.dart';
import 'package:cure_team_1/core/style/theme/app_theme.dart';
import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_widgets.dart';
import '../models/card_model.dart';
import 'add_card_screen.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  // List to hold CardModel objects

  //for test
  final List<CardModel> _cards = [
    CardModel(
      type: 'MasterCard',
      cardNumber: '1234 5678 9012 3456',
      holderName: 'John Doe',
      expiryDate: '12/24',
      cvv: '123',
    ),
    CardModel(
      type: 'Visa',
      cardNumber: '1234 5678 9012 3456',
      holderName: 'John Doe',
      expiryDate: '12/24',
      cvv: '123',
    ),
    CardModel(
      type: 'MasterCard',
      cardNumber: '1234 5678 9012 3456',
      holderName: 'John Doe',
      expiryDate: '12/24',
      cvv: '123',
    ),
    CardModel(
      type: 'Visa',
      cardNumber: '1234 5678 9012 3456',
      holderName: 'John Doe',
      expiryDate: '12/24',
      cvv: '123',
    ),
    CardModel(
      type: 'MasterCard',
      cardNumber: '1234 5678 9012 3456',
      holderName: 'John Doe',
      expiryDate: '12/24',
      cvv: '123',
    ),
    CardModel(
      type: 'Visa',
      cardNumber: '1234 5678 9012 3456',
      holderName: 'John Doe',
      expiryDate: '12/24',
      cvv: '123',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsLight.scaffoldBackground,
      appBar: AppBar(
        title: Text('Cards', style: AppTextStyles.styleSmall26),
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
      body: _cards.isEmpty ? _buildEmptyState() : _buildCardList(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(24.0.r),
        child: CustomButton(
          text: 'Add Card',
          onPressed: () async {
            final newCard = await Navigator.push<CardModel>(
              context,
              MaterialPageRoute(builder: (_) => const AddCardScreen()),
            );

            if (newCard != null) {
              setState(() {
                _cards.add(newCard);
              });
            }
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Visual representation of the card stack using SVG
          SvgPicture.asset(
            Assets.paymentVisa, // Replaced manual stack with Group.svg
            width: 250.w, // Adjusted size
            height: 180.h,
          ),
          SizedBox(height: 40.h),
          Text('Nothing to display here!', style: AppTextStyles.styleLarge20),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 48.w),
            child: Text(
              'Add your cards to make payment easier',
              textAlign: TextAlign.center,
              style: AppTextStyles.styleLarge16.copyWith(
                height: 1.5,
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(height: 60.h),
        ],
      ),
    );
  }

  Widget _buildCardList() {
    return ListView.builder(
      padding: EdgeInsets.all(24.0.r),
      itemCount: _cards.length,
      itemBuilder: (context, index) {
        final card = _cards[index];
        // formatting number to show only last 4 or similar
        // For simplicity: "Visa **** 1234"
        final last4 = card.cardNumber.isNotEmpty && card.cardNumber.length >= 4
            ? card.cardNumber.substring(card.cardNumber.length - 4)
            : '****';

        return Container(
          margin: EdgeInsets.only(bottom: 16.h),
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: ColorsLight.inputFill,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              // Icon
              Container(
                width: 40.w,
                height: 25.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    Assets.paymentVisa, // Using generic Visa logo for now
                    width: 32.w,
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              // Text
              Expanded(
                child: Text(
                  '${card.type} **** $last4',
                  style: AppTextStyles.styleLarge22,
                ),
              ),
              // Radio
              Icon(
                Icons.radio_button_checked,
                color: ColorsLight.primaryColor,
                size: 24.sp,
              ),
            ],
          ),
        );
      },
    );
  }
}
