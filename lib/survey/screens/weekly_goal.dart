import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/survey/widgets/primary_button.dart';
import 'package:nutrition/themes/assets.dart';
import 'package:sizer/sizer.dart';

import '../../shared/widgets/menu.dart';
import '../../themes/colors.dart';
import '../../shared/constants.dart';
import '../widgets/rounded_border_card.dart';

class WeeklyGoal extends StatefulWidget {
  const WeeklyGoal({Key? key}) : super(key: key);

  @override
  State<WeeklyGoal> createState() => _WeeklyGoalState();
}

class _WeeklyGoalState extends State<WeeklyGoal> {
  bool firstOption = false;
  bool secondOption = false;
  bool thirdOption = false;
  bool forthOption = false;

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
                'What\'s your weekly goal? ',
                style: GoogleFonts.mukta(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5.sp),
              Text(
                'let’s break down your overall health goal into weekly one you can maintain. Slow and steady is best!',
                textAlign: TextAlign.center,
                style: GoogleFonts.mukta(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 20.sp),
              InkWell(
                onTap: () {
                  setState(() {
                    firstOption = !firstOption;
                    secondOption = false;
                    thirdOption = false;
                    forthOption = false;
                  });
                },
                child: RoundedBorderCard(
                  title: 'Lose 0.5 pounds per weeks',
                  isSelected: firstOption,
                ),
              ),
              SizedBox(height: 10.sp),
              InkWell(
                onTap: () {
                  setState(() {
                    firstOption = false;
                    secondOption = !secondOption;
                    thirdOption = false;
                    forthOption = false;
                  });
                },
                child: RoundedBorderCard(
                  title: 'Lose 1 pound per week',
                  isSelected: secondOption,
                ),
              ),
              SizedBox(height: 10.sp),
              InkWell(
                onTap: () {
                  setState(() {
                    firstOption = false;
                    secondOption = false;
                    thirdOption = !thirdOption;
                    forthOption = false;
                  });
                },
                child: RoundedBorderCard(
                  isSelected: thirdOption,
                  title: 'Lose 1.5 pounds per week',
                  // onChanged: (value) {},
                ),
              ),
              SizedBox(height: 10.sp),
              InkWell(
                onTap: () {
                  setState(() {
                    firstOption = false;
                    secondOption = false;
                    thirdOption = false;
                    forthOption = !forthOption;
                  });
                },
                child: RoundedBorderCard(
                  isSelected: forthOption,
                  title: 'Lose 2 pound per week',
                  // onChanged: (value) {},
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  surveyScreenController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
                child: const PrimaryButton2(
                  title: 'Back',
                ),
              ),
              PrimaryButton(
                title: 'Done',
                isSelected: firstOption == false && secondOption == false && thirdOption == false && forthOption == false ? false : true,
                onTap: firstOption == false && secondOption == false && thirdOption == false && forthOption == false ? (){} : () {
                  Navigator.of(context).pushReplacement(AppMenu.route(screens: appMenus));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

