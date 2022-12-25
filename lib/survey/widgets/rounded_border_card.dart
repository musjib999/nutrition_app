import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/colors.dart';

class RoundedBorderCard extends StatelessWidget {
  const RoundedBorderCard({
    required this.title,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);
  final String title;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(11),
        color: isSelected == false ? null : AppColors.faintGreen,
      ),
      child: ListTile(
        leading: Checkbox(
          value: isSelected,
          onChanged: (value){},
          activeColor: AppColors.grassGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.mukta(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}