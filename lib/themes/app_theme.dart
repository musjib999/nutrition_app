import 'package:flutter/material.dart';
import 'package:nutrition/themes/colors.dart';

ThemeData appTheme = ThemeData(
  primarySwatch: Colors.green,
  navigationBarTheme: NavigationBarThemeData(
    indicatorColor: AppColors.primaryColor.withOpacity(0.3),
  ),
);