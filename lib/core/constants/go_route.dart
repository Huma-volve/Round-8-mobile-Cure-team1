import 'package:cure_team_1/core/constants/app_route.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/doctor_details_screen.dart';
import 'package:cure_team_1/features/auth/login/presentation/pages/login_page.dart';
import 'package:cure_team_1/features/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: AppRoute.splash,
  routes: [
    GoRoute(
      path: AppRoute.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoute.bookPage,
      builder: (context, state) => const DoctorDetailsScreen(),
    ),
    GoRoute(
      path: AppRoute.loginPage,
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
