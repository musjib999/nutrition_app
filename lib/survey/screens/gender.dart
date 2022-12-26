import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/survey/constants.dart';
import 'package:sizer/sizer.dart';

import '../../themes/colors.dart';
import '../widgets/gender_selector.dart';
import '../widgets/primary_button.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 15.sp),
              Text(
                'What\'s your gender?',
                style: GoogleFonts.mukta(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8.sp),
              Text(
                'To give you a better experience, we need to know your gender',
                textAlign: TextAlign.center,
                style: GoogleFonts.mukta(fontSize: 15, color: AppColors.grey),
              ),
              SizedBox(height: 12.sp),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMaleSelected = true;
                    isFemaleSelected = false;
                  });
                },
                child: GenderSelector(
                    icon: Icons.male, title: 'Male', isSelected: isMaleSelected),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMaleSelected = false;
                    isFemaleSelected = true;
                  });
                },
                child: GenderSelector(
                    icon: Icons.female, title: 'Female', isSelected: isFemaleSelected),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PrimaryButton(isSelected: isMaleSelected == false && isFemaleSelected == false ? false : true, title: 'Next', onTap: isMaleSelected == false && isFemaleSelected == false ? (){} :  () {
                surveyScreenController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear,
                );
              },)
            ],
          )
        ],
      ),
    );
  }
}



