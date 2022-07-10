import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:login/screens/search.dart';


import '../screens/home.dart';


class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreen();
}

class _homescreen extends State<homescreen> {
  int _selectedIndex = 0;
  void _navigateBtmNavBar(int index){
    setState(() {
      _selectedIndex = index;
    }
    );
  }
  // different pages to navigate to

  final List<Widget> _children = [
    UsrHome(),
    search(),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBtmNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),

          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      ),
    );
  }
}