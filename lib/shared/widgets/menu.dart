import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../themes/colors.dart';

class AppMenu extends StatefulWidget {
  final List<Widget> screens;
  static Route route({required List<Widget> screens}) => MaterialPageRoute(builder: (_) => AppMenu(screens: screens));
  const AppMenu({Key? key, required this.screens})
      : super(key: key);

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screens.elementAt(_selectedIndex),
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(seconds: 1),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_filled,
              color:
              _selectedIndex == 0 ? AppColors.primaryColor : AppColors.grey,
            ),
            label: 'Diary',
            tooltip: 'Diary',
          ),
          NavigationDestination(
            icon: Icon(
              _selectedIndex == 1 ? Ionicons.fast_food : Ionicons.fast_food_outline,
              color:
              _selectedIndex == 1 ? AppColors.primaryColor : AppColors.grey,
            ),
            label: 'Meal Plan',
            tooltip: 'Meal Plan',
          ),
          NavigationDestination(
            icon: Icon(
              _selectedIndex == 2 ? Ionicons.person : Ionicons.person_outline,
              color:
              _selectedIndex == 2 ? AppColors.primaryColor : AppColors.grey,
            ),
            label: 'Me',
            tooltip: 'Account',
          ),
        ],
      ),
    );
  }
}