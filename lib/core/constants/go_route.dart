import 'package:cure_team_1/core/constants/app_route.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/add_review_screen.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/book_apointmennt_.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/doctor_details_screen.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/select_payment_method_screen.dart';
import 'package:cure_team_1/features/auth/login/presentation/pages/login_page.dart';
import 'package:cure_team_1/features/auth/otp/presentation/pages/otp_page.dart';
import 'package:cure_team_1/features/auth/sign_up/presentation/pages/sign_up_page.dart';
import 'package:cure_team_1/features/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: AppRoute.doctorDetails,
  routes: [
    GoRoute(
      path: AppRoute.splash,
      builder: (context, state) => const SplashScreen(),
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
  ],
);
