import 'package:flutter/material.dart';

import 'package:flutter_application_5/screens/homescreen.dart';
import 'package:flutter_application_5/screens/likes.dart';
import 'package:flutter_application_5/screens/profile.dart';
import 'package:flutter_application_5/screens/reels.dart';
import 'package:flutter_application_5/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    LikeScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: '', backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.smart_display_outlined),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: Colors.black),
        ],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        iconSize: 30,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
