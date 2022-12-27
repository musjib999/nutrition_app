import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../themes/colors.dart';

class DiaryCard extends StatelessWidget {
  const DiaryCard({
    required this.title, required this.icon, required this.subtitle1, required this.subtitle2, this.color,
    Key? key,
  }) : super(key: key);

  final String title, icon, subtitle1, subtitle2;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      height: 25.h,
      decoration: BoxDecoration(
        color: color ?? AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.mukta(fontSize: 18, fontWeight: FontWeight.w600),),
          Image.asset(icon, width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subtitle1, style: GoogleFonts.mukta(fontSize: 15, fontWeight: FontWeight.w600),),
              Text(subtitle2, style: GoogleFonts.mukta(fontSize: 13, fontWeight: FontWeight.w400),),
            ],
          )
        ],
      ),
    );
  }
}