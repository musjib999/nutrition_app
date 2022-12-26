import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/survey/widgets/primary_button.dart';
import 'package:nutrition/themes/assets.dart';
import 'package:nutrition/themes/colors.dart';
import 'package:sizer/sizer.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(14.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppAssets.salad,
                width: 70.w,
              ),
            ),
            SizedBox(height: 20.sp),
            Text(
              'Your best food tracker ever!',
              textAlign: TextAlign.center,
              style: GoogleFonts.mukta(
                  fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
            Text(
              'Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut aliquip ex ea commodo consequat',
              textAlign: TextAlign.center,
              style: GoogleFonts.mukta(fontSize: 15, color: AppColors.grey,
              ),
            ),
            SizedBox(height: 25.sp),
            PrimaryButton(title: 'Get Started', onTap: (){}, isSelected: true, width: 100.w,),
          ],
        ),
      ),
    );
  }
}
