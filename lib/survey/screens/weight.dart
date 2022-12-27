import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrition/survey/helpers/convertions.dart';
import 'package:sizer/sizer.dart';

import '../../themes/assets.dart';
import '../../themes/colors.dart';
import '../../shared/constants.dart';
import '../widgets/primary_button.dart';
class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  double weight = 106;
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
                'Choose your weight',
                style: GoogleFonts.mukta(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SvgPicture.asset(AppAssets.weightSvg, height: 50.h,),
              SizedBox(height: 8.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${weight.ceil()} lbs', style: GoogleFonts.mukta(fontSize: 30, fontWeight: FontWeight.bold),),
                  Text('(${poundsToKg(weight).toStringAsFixed(2)} kg)', style: GoogleFonts.mukta(fontSize: 18, fontWeight: FontWeight.normal, color: AppColors.grey),),
                ],
              ),
              Slider(
                inactiveColor: AppColors.primaryColor.withOpacity(0.4),
                activeColor: AppColors.primaryColor,
                thumbColor: AppColors.primaryColor,
                value: weight, onChanged: (value){
                setState(() {
                  weight = value;
                });
              }, min: 94.0, max: 300.0,),
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
                onTap: () {
                  surveyScreenController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
                title: 'Next',
                isSelected: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
