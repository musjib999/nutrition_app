import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/meal_plan/widgets/meal_plan_card.dart';
import 'package:nutrition/themes/assets.dart';
import 'package:nutrition/themes/colors.dart';
import 'package:sizer/sizer.dart';

class SingleMealPlan extends StatelessWidget {
  static Route route({required int day}) =>
      MaterialPageRoute(builder: (_) => SingleMealPlan(day: day));
  const SingleMealPlan({Key? key, required this.day}) : super(key: key);
  final int day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.faintGreen.withOpacity(0.9),
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.black),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.faintGreen.withOpacity(0.9),
              Colors.grey.shade50,
              Colors.grey.shade50,
              Colors.grey.shade50
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.sp),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50.w,
                      child: Text(
                        'Your meal plan for Day $day',
                        style: GoogleFonts.mukta(
                            fontSize: 27, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SvgPicture.asset(
                      AppAssets.watermelon,
                      height: 18.h,
                      width: 40.w,
                    ),
                  ],
                ),
                SizedBox(height: 25.sp),
                const MealPlanCard2(
                  title: 'Breakfast',
                  calories: 245,
                  color: AppColors.lightYellow,
                  meal: 'Bread',
                  time: '9am-10am',
                ),
                SizedBox(height: 10.sp),
                MealPlanCard2(
                  title: 'Lunch',
                  calories: 355,
                  color: AppColors.faintGreen.withOpacity(0.4),
                  meal: 'vegetable soup',
                  time: '12pm',
                ),
                SizedBox(height: 10.sp),
                const MealPlanCard2(
                  title: 'Snack',
                  calories: 133,
                  color: AppColors.pinky,
                  meal: '2 boiled eggs',
                  time: '2:00pm - 4:00pm',
                ),
                SizedBox(height: 10.sp),
                MealPlanCard2(
                  title: 'Dinner',
                  calories: 133,
                  color: AppColors.skyBlue.withOpacity(0.4),
                  meal: 'Vegetable salad: made with one medium sized carrot',
                  time: '6pm',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
