import 'package:flutter/material.dart';
import 'package:nutrition/survey/screens/gender.dart';
import 'package:nutrition/survey/screens/height.dart';
import 'package:nutrition/survey/screens/weekly_goal.dart';
import 'package:nutrition/survey/screens/weight.dart';

List<Widget> surveyScreens = [const GenderScreen(), const HeightScreen(), const Weight(), const WeeklyGoal()];
PageController surveyScreenController = PageController();