import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/themes/colors.dart';
import 'package:sizer/sizer.dart';
class Login extends StatelessWidget {

  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100.w,
        height: 100.w,
        color: AppColors.primaryColor,
        child: Padding(
          padding: EdgeInsets.only(top: 12.sp),
          child: Center(child: Text('SnapBack', style: GoogleFonts.mukta(fontSize: 19, fontWeight: FontWeight.bold, color: AppColors.white),),),
        ),
      ),
    );
  }
}
