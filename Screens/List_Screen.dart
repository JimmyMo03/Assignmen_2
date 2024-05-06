import 'package:assignment2test/Screens/bottom_nav_bar.dart';
import 'package:assignment2test/Screens/distance.dart';
import 'package:flutter/material.dart';
import 'list_page.dart';
import 'favourites.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  //Navigating bottom bar
  int selectedIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  //Pages (screens)
  final List<Widget> _pages = [
    //List of all stores
    const ListPage(),

    //view fav stores
    const Favourites(),

    //distance between location and one of fav stores
    const Distance(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: MyBottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[selectedIndex],
    );
  }
}


