import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tester/page_ig/Home_ig.dart';
import 'package:tester/page_ig/Account_ig.dart';
import 'package:tester/page_ig/Reels_ig.dart';
import 'package:tester/page_ig/Search_ig.dart';
import 'package:tester/page_ig/Shop_ig.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  // navigate around the bottom nav bar
  int _selectedIndex = 2;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to navigate
  final List<Widget> _children = [
    Home_ig(),
    Search_ig(),
    Reels_ig(),
    Shop_ig(),
    Account_ig(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account')
        ],
      ),
    );
  }
}
