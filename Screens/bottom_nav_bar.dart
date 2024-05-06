import 'dart:async';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNav({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: Colors.grey.shade300,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'List',
          ),
          GButton(
            icon: Icons.shop,
            text: 'Fav.',
          ),
          GButton(
            icon: Icons.near_me,
            text: 'Distance',
          )
        ],
      ),
    );
  }
}
