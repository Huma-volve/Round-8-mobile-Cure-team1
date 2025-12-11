import 'package:cure_team_1/core/constants/app_route.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/add_review_screen.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/book_apointmennt_.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/doctor_details_screen.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/select_payment_method_screen.dart';
import 'package:cure_team_1/features/Home/presentation/pages/favorite_page.dart';
import 'package:cure_team_1/features/Home/presentation/pages/home_page.dart';
import 'package:cure_team_1/features/Home/presentation/pages/map.dart';
import 'package:cure_team_1/features/Home/presentation/pages/search_page.dart';
import 'package:cure_team_1/features/Home/presentation/pages/veiw_all_specialties.dart';
import 'package:cure_team_1/features/auth/login/presentation/pages/login_page.dart';
import 'package:cure_team_1/features/auth/otp/presentation/pages/otp_page.dart';
import 'package:cure_team_1/features/auth/sign_up/presentation/pages/sign_up_page.dart';
import 'package:cure_team_1/features/chat/persention/screens/chat.dart';
import 'package:cure_team_1/features/profile/screens/profile_screen.dart';
import 'package:cure_team_1/features/onboarding/presentation/pages/onboarding_screen.dart';
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
path: AppRoute.onBoarding,
      builder: (context, state) => const OnboaedingScreen(),
    ),
    GoRoute(
      path: AppRoute.home,
      builder: (context, state) => const HomePage(),
    ), GoRoute(
      path: AppRoute.search,
      builder: (context, state) => const SearchPage(),
    ), GoRoute(
      path: AppRoute.favorite,
      builder: (context, state) => const FavoritePage(),
    ), GoRoute(
      path: AppRoute.viewAllForSpecialties,
      builder: (context, state) => const ViewAllSpecialties(),
    ),
    GoRoute(
      path: AppRoute.map,
      builder: (context, state) => const MapPage(),
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
      // builder: (context, state) => const LoginPage(),
      builder: (context, state) => const ProfileScreen(),
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
  ],
);
