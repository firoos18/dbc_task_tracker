// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:task_tracker/pages/calendar.dart';
import 'package:task_tracker/pages/home.dart';
import 'package:task_tracker/pages/save.dart';
import 'package:task_tracker/pages/tasks.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    Home(),
    Save(),
    Tasks(),
    Calendar(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.brown.shade50,
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            activeColor: Colors.black,
            color: Colors.grey.shade500,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              GButton(icon: FeatherIcons.home),
              GButton(icon: FeatherIcons.folder),
              GButton(icon: FeatherIcons.clipboard),
              GButton(icon: FeatherIcons.calendar),
            ],
          ),
        ),
      ),
    );
  }
}
