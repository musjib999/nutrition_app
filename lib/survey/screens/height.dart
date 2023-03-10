import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/survey/widgets/primary_button.dart';
import 'package:nutrition/themes/assets.dart';
import 'package:sizer/sizer.dart';

import '../../themes/colors.dart';
import '../../shared/constants.dart';
import '../helpers/convertions.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({Key? key}) : super(key: key);

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  double height = 170.0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 15.sp),
              Text(
                'Choose your height?',
                style: GoogleFonts.mukta(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SvgPicture.asset(AppAssets.heightSvg, height: 50.h,),
              SizedBox(height: 8.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${height.ceil()} cm', style: GoogleFonts.mukta(fontSize: 30, fontWeight: FontWeight.bold),),
                  Text('(${cmToFeetConversion(height).toStringAsFixed(2)} feet)', style: GoogleFonts.mukta(fontSize: 18, fontWeight: FontWeight.normal, color: AppColors.grey),),
                ],
              ),
              Slider(
                inactiveColor: AppColors.primaryColor.withOpacity(0.4),
                activeColor: AppColors.primaryColor,
                thumbColor: AppColors.primaryColor,
                value: height, onChanged: (value){
                setState(() {
                  height = value;
                });
              }, min: 155.0, max: 200.0,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  surveyScreenController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
                child: const PrimaryButton2(
                  title: 'Back',
                ),
              ),
              PrimaryButton(
                title: 'Next',
                isSelected: true,
                onTap: () {
                  surveyScreenController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
    ;
  }
}
