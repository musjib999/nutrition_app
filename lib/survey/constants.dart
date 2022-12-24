import 'package:flutter/material.dart';
import 'package:nutrition/survey/screens/gender.dart';
import 'package:nutrition/survey/screens/height.dart';

List<Widget> surveyScreens = [const GenderScreen(), const heightScreen(), Container()];
PageController surveyScreenController = PageController();