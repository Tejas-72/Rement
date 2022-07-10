import 'dart:math';

import 'package:flutter/material.dart';
import 'package:login/screens/getstarted.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/screens/loginscreen_student.dart';

// function to trigger the app build

// class to build the app
class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(

            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xffC8B6E2)),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>getstarted())),
            ),
            bottom:  TabBar(
              tabs: [
                Tab(text: 'Student'),
                Tab(text: 'Teacher'),

              ],
            ), // TabBar
            title: const Text('Rement',style: TextStyle(
              color: Color(0xffebe7f5),
            ),),
            backgroundColor:Color(0xff371B58),
          ), // AppBar
          body: const TabBarView(
            children: [
              loginscreenst(),
              loginscreen(),

            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}
