import 'dart:async';
import 'package:cure_team_1/core/theme/app_colors.dart';
import 'package:cure_team_1/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cure_team_1/features/onboarding/presentation/pages/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<bool> dotVisible = [true, false, false, false];
  int activeIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;
      setState(() {
        activeIndex = (activeIndex + 1) % 4;
      });
    });

    Future.delayed(const Duration(seconds: 3), () async {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const OnboardingScreen()));
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset(
              AppImages.logoSplash,
              width: 0.18.sw,
              height: 0.18.sw,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 0.08.sh,
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: 4,
              effect: ScaleEffect(
                activeDotColor: Colors.white,
                dotColor: Colors.white.withAlpha((255 * 0.6).round()),
                dotWidth: 0.025.sw,
                dotHeight: 0.025.sw,
                radius: 0.025.sw,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
