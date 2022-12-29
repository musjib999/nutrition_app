import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/themes/colors.dart';

ThemeData appTheme = ThemeData(
  primarySwatch: Colors.green,
  navigationBarTheme: NavigationBarThemeData(
    indicatorColor: AppColors.primaryColor.withOpacity(0.3),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.grey.shade50,
    iconTheme: const IconThemeData(color: AppColors.black),
    titleTextStyle: GoogleFonts.mukta(color: AppColors.black, fontSize: 19),
  ),
);