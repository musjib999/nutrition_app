import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nutrition/themes/assets.dart';
import 'package:nutrition/themes/colors.dart';
import 'package:sizer/sizer.dart';

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
                  const CircleAvatar(radius: 25, backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/53815937?v=4'),),
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
                child: SingleChildScrollView(
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
                      Container(
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
                                Row(
                                  children: [
                                    TextButton(onPressed: (){}, child: Text('New Plan', style: GoogleFonts.mukta(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.primaryColor),),),
                                    const Icon(Icons.edit_outlined, color: AppColors.primaryColor,),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 8.sp),
                            const MealPlanCard(title: 'Breakfast', calories: 245, svg: AppAssets.breakfast, color: AppColors.lightYellow,),
                            SizedBox(height: 8.sp),
                            MealPlanCard(title: 'Lunch', calories: 525, svg: AppAssets.lunch, color: AppColors.faintGreen.withOpacity(0.4),),
                            SizedBox(height: 8.sp),
                            MealPlanCard(title: 'Dinner', calories: 133, svg: AppAssets.dinner, color: AppColors.skyBlue.withOpacity(0.4),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MealPlanCard extends StatelessWidget {
  final String title, svg;
  final int calories;
  final Color color;
  const MealPlanCard({
    required this.title, required this.svg, required this.calories, required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 40.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: GoogleFonts.mukta(fontSize: 16, fontWeight: FontWeight.w700),),
                SizedBox(height: 12.sp),
                Text('Green Tea, Egg, Oat', style: GoogleFonts.mukta(fontSize: 13, fontWeight: FontWeight.w400),),
                SizedBox(height: 12.sp),
                Row(
                  children: [
                    const Icon(Ionicons.flame_outline, color: Colors.deepOrange, size: 25,),
                    Text('$calories Kcal', style: GoogleFonts.mukta(fontSize: 16, fontWeight: FontWeight.w700),),
                  ],
                )
              ],
            ),
          ),
          SvgPicture.asset(svg, width: 40.w,),
        ],
      ),
    );
  }
}

