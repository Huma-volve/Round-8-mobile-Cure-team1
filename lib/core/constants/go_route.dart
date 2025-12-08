import 'package:cure_team_1/core/constants/app_route.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/doctor_details_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoute.bookPage,
        builder: (context, state) => const DoctorDetailsScreen(),
      ),
    ]
);

