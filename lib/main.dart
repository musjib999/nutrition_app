import 'package:flutter/material.dart';
import 'package:nutrition/onboarding/onboarding.dart';
import 'package:nutrition/survey/survey_screen.dart';
import 'package:nutrition/themes/app_theme.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: appTheme,
          home: const OnBoarding(),
        );
      }
    );
  }
}
