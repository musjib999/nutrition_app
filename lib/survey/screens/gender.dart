import 'package:flutter/material.dart';
import 'package:nutrition/survey/constants.dart';
import 'package:sizer/sizer.dart';

import '../widgets/gender_selector.dart';

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
              const Text(
                'What\'s your gender?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8.sp),
              const Text(
                'To give you a better experience, we need to know your gender',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey),
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
              GestureDetector(
                onTap: isMaleSelected == false && isFemaleSelected == false ? (){} :  () {
                  surveyScreenController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15.0),
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: isMaleSelected == false && isFemaleSelected == false ? Colors.grey : Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

