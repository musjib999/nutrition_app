import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nutrition/themes/colors.dart';
import 'package:sizer/sizer.dart';

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
                  const CircleAvatar(radius: 25),
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
                        'You\'ve gained 22lbs yesterday, keep it up!',
                        style: GoogleFonts.mukta(color: AppColors.grey),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 8.sp),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Ionicons.calendar_clear_outline),
                        SizedBox(width: 4.sp),
                        Text('December 20, 2022', style: GoogleFonts.mukta(fontSize: 16, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ],),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
