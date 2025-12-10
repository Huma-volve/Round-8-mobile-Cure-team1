import 'package:cure_team_1/core/app/bloc_observer.dart';
import 'package:cure_team_1/core/di/injection_container%20copy.dart';
import 'package:cure_team_1/core/services/shared_pref/shared_pref.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();
  await SharedPref().instantiatePreferences();
  await setupInjector();

  //عشان لما التلفون يقلب على الجمب البرنامج  ميقلبش معاه
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(
    DevicePreview(
      builder: (context) => const DocApp(),
      // isToolbarVisible: false,
      enabled: false, // Wrap your app
    ),
  );
}

//new
