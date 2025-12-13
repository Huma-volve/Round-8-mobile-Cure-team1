import 'package:cure_team_1/core/constants/app_route.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/add_review_screen.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/book_apointmennt_.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/doctor_details_screen.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/select_payment_method_screen.dart';
import 'package:cure_team_1/features/auth/login/presentation/pages/login_page.dart';

import 'package:cure_team_1/features/auth/otp/presentation/pages/otp_page.dart';
import 'package:cure_team_1/features/auth/sign_up/presentation/pages/sign_up_page.dart';
import 'package:cure_team_1/features/chat/persention/screens/chat.dart';
import 'package:cure_team_1/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:cure_team_1/features/payment/screens/add_card_screen.dart';
import 'package:cure_team_1/features/payment/screens/cards_screen.dart';
import 'package:cure_team_1/features/payment/screens/payment_methods_screen.dart';
import 'package:cure_team_1/features/profile/screens/edit_profile_screen.dart';
import 'package:cure_team_1/features/profile/screens/profile_screen.dart';

import 'package:cure_team_1/features/chat/persention/screens/chatbody.dart';
import 'package:cure_team_1/features/notifications/screen/notifications.dart';
import 'package:cure_team_1/features/settings/screens/faqs_screen.dart';
import 'package:cure_team_1/features/settings/screens/password_management_screen.dart';
import 'package:cure_team_1/features/settings/screens/privacy_policy_screen.dart';
import 'package:cure_team_1/features/settings/screens/settings_screen.dart';
import 'package:cure_team_1/features/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: AppRoute.profileScreen,
  routes: [
    GoRoute(
      path: AppRoute.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoute.onBoarding,
      builder: (context, state) => const OnboaedingScreen(),
    ),
    GoRoute(
      path: AppRoute.bookappointment,
      builder: (context, state) => const Bookappointment(),
    ),
    GoRoute(
      path: AppRoute.selectPaymentMethodScreen,
      builder: (context, state) => const SelectPaymentMethodScreen(),
    ),
    GoRoute(
      path: AppRoute.addReviewScreen,
      builder: (context, state) => const AddReviewScreen(),
    ),
    GoRoute(
      path: AppRoute.doctorDetails,
      builder: (context, state) => const DoctorDetailsScreen(),
    ),
    GoRoute(
      path: AppRoute.loginPage,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AppRoute.signupPage,
      builder: (context, state) => const SignUpPage(),
    ),

    GoRoute(
      path: AppRoute.otpPage,
      builder: (context, state) => const OtpPage(),
    ),
    GoRoute(
      path: AppRoute.chat,
      builder: (context, state) => const Chat(),
    ),
    GoRoute(
      path: AppRoute.chatbody,
      builder: (context, state) => const Chatbody(),
    ),
    GoRoute(
      path: AppRoute.notifications,
      builder: (context, state) => const Notifications(),
    ),

    //payment
    GoRoute(
      path: AppRoute.paymentScreenpaymentScreen,
      builder: (context, state) => const PaymentMethodsScreen(),
    ),
    GoRoute(
      path: AppRoute.addCardScreen,
      builder: (context, state) => const AddCardScreen(),
    ),
    GoRoute(
      path: AppRoute.cardsScreen,
      builder: (context, state) => const CardsScreen(),
    ),

    //profile
    GoRoute(
      path: AppRoute.editProfileScreen,
      builder: (context, state) => const EditProfileScreen(),
    ),

    GoRoute(
      path: AppRoute.profileScreen,
      builder: (context, state) => const ProfileScreen(),
    ),
//settings
    GoRoute(
      path: AppRoute.settingsScreen,
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: AppRoute.privacyPolicyScreen,
      builder: (context, state) => const PrivacyPolicyScreen(),
    ),
    GoRoute(
      path: AppRoute.passwordManagementScreen,
      builder: (context, state) => const PasswordManagementScreen(),
    ),
    GoRoute(
      path: AppRoute.faqsScreen,
      builder: (context, state) => const FAQsScreen(),
    ),
    GoRoute(
      path: AppRoute.privacyPolicyScreen,
      builder: (context, state) => const PrivacyPolicyScreen(),
    ),
  ],
);
