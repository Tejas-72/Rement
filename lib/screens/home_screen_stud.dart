import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:login/screens/home_stud.dart';
import 'package:login/screens/search.dart';

import 'Account.dart';
import 'Tag.dart';
import 'home.dart';


class homescreen_stud extends StatefulWidget {
  const homescreen_stud({Key? key}) : super(key: key);

  @override
  State<homescreen_stud> createState() => _homescreen_studState();
}

class _homescreen_studState extends State<homescreen_stud> {
  int _selectedIndex = 0;
  void _navigateBtmNavBar(int index){
    setState(() {
      _selectedIndex = index;
    }
    );
  }
  // different pages to navigate to

  final List<Widget> _children = [
    UsrHome_stud(),
    search(),
    UsrTag(),
    UsrAccount(),

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
