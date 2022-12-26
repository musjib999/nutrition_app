import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/survey/constants.dart';
import 'package:nutrition/themes/colors.dart';
import 'package:sizer/sizer.dart';

class SurveyScreen extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (_) => const SurveyScreen());
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  double currentQuestion = 0;
  int totalQuestions = 6;

  @override
  void initState() {
    super.initState();
    surveyScreenController.addListener(() {
      setState(() {
        currentQuestion = surveyScreenController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${currentQuestion.ceil()}/${surveyScreens.length}',
                      style: GoogleFonts.mukta(color: AppColors.primaryColor, fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8.0),
                    LinearProgressIndicator(
                      value: currentQuestion / surveyScreens.length,
                      valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
                      backgroundColor: AppColors.primaryColor.withOpacity(0.4),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 85.h,
                child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                  controller: surveyScreenController,
                  itemCount: surveyScreens.length,
                    itemBuilder: (context, index) {
                  return surveyScreens[index];
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
