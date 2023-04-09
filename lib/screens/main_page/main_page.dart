import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../constants/constants.dart';
import '../daily_test/leader_board.dart';
import '../habit_tracker/habit_tracker_home.dart';
import '../home_screen/home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            LeaderBoard(),
            HomePage(),
            HabitTrackerHomePage(),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: GNav(
            backgroundColor: Constants.backgroundColor,
            tabBackgroundColor: Constants.yellowColor,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.leaderboard_rounded,
                text: " Leader Board",
              ),
              GButton(
                icon: Icons.home,
                text: " Home",
              ),
              GButton(
                icon: Icons.calendar_month_rounded,
                text: " OUA Tracker",
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
