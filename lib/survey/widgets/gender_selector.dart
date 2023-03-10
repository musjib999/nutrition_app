import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/themes/colors.dart';
import 'package:sizer/sizer.dart';

class GenderSelector extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  const GenderSelector({
    required this.title,
    required this.icon,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 35.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: !isSelected ? Colors.grey : AppColors.grassGreen),
        color: !isSelected ? AppColors.white : AppColors.faintGreen,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 60,
            color: !isSelected ? Colors.grey : AppColors.grassGreen,
          ),
          SizedBox(height: 8.sp),
          Text(
            title,
            style: GoogleFonts.mukta(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: !isSelected ? Colors.grey : Colors.black),
          ),
        ],
      ),
    );
  }
}