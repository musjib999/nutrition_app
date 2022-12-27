import 'package:flutter/material.dart';
import 'package:nutrition/themes/colors.dart';

ThemeData appTheme = ThemeData(
  primarySwatch: Colors.deepPurple,
  navigationBarTheme: NavigationBarThemeData(
    indicatorColor: AppColors.primaryColor.withOpacity(0.3),
  ),
);