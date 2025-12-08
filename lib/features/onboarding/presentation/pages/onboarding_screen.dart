import 'package:cure_team_1/core/theme/app_text_styles.dart';
import 'package:cure_team_1/features/onboarding/presentation/pages/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: AppTextStyles.styleMedium16,
              ))
        ],
      ),
      body: OnboardingViewBody(),
    );
  }
}
