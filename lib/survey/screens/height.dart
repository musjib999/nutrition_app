import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants.dart';
class heightScreen extends StatelessWidget {
  const heightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [SizedBox(height: 15.sp), const Text('What\'s your height?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (){
                  surveyScreenController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  width: 40.w,
                  child: const Text('Back', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                ),
              ),
              GestureDetector(
                onTap: (){
                  surveyScreenController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(child: Text('Next', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),),),
                ),
              )
            ],
          )
        ],
      ),
    );;
  }
}
