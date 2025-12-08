import 'package:cure_team_1/core/constants/app_constants.dart';
import 'package:cure_team_1/features/Booking/presentation/screens/doctor_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppConstants.bookScreen,
      builder: (BuildContext context, GoRouterState state) => const DoctorDetailsScreen()
    )]);
    