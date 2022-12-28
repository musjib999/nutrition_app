import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/meal_plan/widgets/meal_plan_card.dart';
import 'package:sizer/sizer.dart';

import '../themes/assets.dart';
import '../themes/colors.dart';

class MealPlan extends StatelessWidget {
  const MealPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.grey.shade50, title: Text('Meal Plan', style: GoogleFonts.mukta(color: AppColors.black),), automaticallyImplyLeading: false,),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.sp),
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 7.5.sp),
              padding: EdgeInsets.all(8.sp),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Day ${index + 1}',
                        style: GoogleFonts.mukta(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.sp),
                  const MealPlanCard(
                    title: 'Breakfast',
                    calories: 245,
                    svg: AppAssets.breakfast,
                    color: AppColors.lightYellow,
                    meal: 'Intermittent fasting',
                  ),
                  SizedBox(height: 8.sp),
                  MealPlanCard(
                    title: 'Lunch',
                    calories: 525,
                    svg: AppAssets.lunch,
                    color: AppColors.faintGreen.withOpacity(0.4),
                    meal:
                        'One piece oil less cat fish pepper-soup with one cube seasoning of yourchoice.',
                  ),
                  SizedBox(height: 8.sp),
                  const MealPlanCard(title: 'Snack', calories: 133, svg: AppAssets.snack, color: AppColors.pinky,meal: '2 Cucumber, 200 grams of watermelon, 2 oranges, 4 medium sized carrots OR, 2 boiled eggs',),
                  SizedBox(height: 8.sp),
                  MealPlanCard(
                    title: 'Dinner',
                    calories: 133,
                    svg: AppAssets.dinner,
                    color: AppColors.skyBlue.withOpacity(0.4),
                    meal:
                        'Vegetable salad: made with one medium sized carrot, One cucumber, 100 grams cabbage, With a table spoon of jago mayonnaise ( optional ) OR, 1 tbsp extra virgin olive oil ,salt and black pepper',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
