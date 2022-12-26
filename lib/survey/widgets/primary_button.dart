import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../themes/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    this.color = AppColors.primaryColor,
    this.width,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final double? width;
  final Color? color;
  final Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 30.0, vertical: 15.0),
        width: width ?? 40.w,
        decoration: BoxDecoration(
          color: isSelected == false ? Colors.grey : color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.mukta(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class PrimaryButton2 extends StatelessWidget {
  const PrimaryButton2({
    Key? key,
    required this.title,
    this.color = Colors.white,
  }) : super(key: key);

  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 30.0, vertical: 15.0),
      width: 40.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Text(
          title,
          style:  GoogleFonts.mukta(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}