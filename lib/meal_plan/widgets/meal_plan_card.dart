import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class MealPlanCard extends StatelessWidget {
  final String title, svg, meal;
  final int calories;
  final Color color;
  const MealPlanCard({
    required this.title, required this.svg, required this.calories, required this.color,
    required this.meal,
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
                Text(meal, style: GoogleFonts.mukta(fontSize: 13, fontWeight: FontWeight.w400), overflow: TextOverflow.ellipsis, maxLines: 3,),
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