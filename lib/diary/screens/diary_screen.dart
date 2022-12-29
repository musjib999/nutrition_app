import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nutrition/meal_plan/screens/single_meal_plan.dart';
import 'package:nutrition/themes/assets.dart';
import 'package:nutrition/themes/colors.dart';
import 'package:sizer/sizer.dart';

import '../../meal_plan/widgets/meal_plan_card.dart';
import '../widgets/diary_card.dart';

class Diary extends StatefulWidget {
  const Diary({Key? key}) : super(key: key);

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(12.sp),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(radius: 25, backgroundImage: AssetImage(AppAssets.profilePic),),
                  SizedBox(width: 8.sp),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, John 👋',
                        style: GoogleFonts.mukta(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'You\'ve gained 82 lbs yesterday, keep it up!',
                        style: GoogleFonts.mukta(color: AppColors.grey),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 8.sp),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Ionicons.calendar_clear_outline),
                        SizedBox(width: 4.sp),
                        Text(
                          'December 20, 2022',
                          style: GoogleFonts.mukta(
                              fontSize: 16, fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.sp),
                    Row(
                      children: [
                        const Expanded(
                          child: DiaryCard(title: 'Calories', color: AppColors.lightYellow, icon: AppAssets.calories, subtitle1: '750 Kcal', subtitle2: '2550 Kcal left',),
                        ),
                        SizedBox(width: 3.w),
                        Expanded(
                          child: DiaryCard(title: 'Weight', color: AppColors.skyBlue.withOpacity(0.4), icon: AppAssets.scale, subtitle1: '189 lbs', subtitle2: 'Goal 170 lbs',),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.sp),
                    Expanded(
                      child: SingleChildScrollView(
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push(SingleMealPlan.route()),
                          child: Container(
                            padding: EdgeInsets.all(8.sp),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Today\'s Meal', style: GoogleFonts.mukta(fontSize: 20, fontWeight: FontWeight.w800),),
                                    Text('Day 2', style: GoogleFonts.mukta(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.primaryColor),)
                                  ],
                                ),
                                SizedBox(height: 8.sp),
                                const MealPlanCard(title: 'Breakfast', calories: 245, svg: AppAssets.breakfast, color: AppColors.lightYellow, meal: 'Intermittent fasting',),
                                SizedBox(height: 8.sp),
                                MealPlanCard(title: 'Lunch', calories: 525, svg: AppAssets.lunch, color: AppColors.faintGreen.withOpacity(0.4), meal: 'One piece oil less cat fish pepper-soup with one cube seasoning of yourchoice.',),
                                SizedBox(height: 8.sp),
                                const MealPlanCard(title: 'Snack', calories: 133, svg: AppAssets.snack, color: AppColors.pinky,meal: '2 Cucumber, 200 grams of watermelon, 2 oranges, 4 medium sized carrots OR, 2 boiled eggs',),
                                SizedBox(height: 8.sp),
                                MealPlanCard(title: 'Dinner', calories: 133, svg: AppAssets.dinner, color: AppColors.skyBlue.withOpacity(0.4),meal: 'Vegetable salad: made with one medium sized carrot, One cucumber, 100 grams cabbage, With a table spoon of jago mayonnaise ( optional ) OR, 1 tbsp extra virgin olive oil ,salt and black pepper',),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

