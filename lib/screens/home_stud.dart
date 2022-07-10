import 'package:flutter/material.dart';
import 'package:login/bubbles.dart';
import 'package:login/post/add.dart';
import 'package:login/screens/login.dart';
import 'package:login/screens/subjects.dart';
import 'package:login/view/view_cult.dart';
import 'package:login/view/view_others.dart';
import 'package:login/view/view_place.dart';
import 'package:login/view/view_tech.dart';
import 'drawer.dart';
import 'drawer_Stud.dart';
class UsrHome_stud extends StatelessWidget {
  // const UsrHome ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return Scaffold(

      backgroundColor: Color(0xff7858A6),
      body:  CustomScrollView(
        slivers: [
          SliverAppBar(

            backgroundColor: Color(0xff371B58),
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {
            //     MenuDrawer();
            //   },
            // ),
            //title: Text('R E M E N T'),
            floating: true,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(

              //background: Image.asset('name'), could add an image also
              background:
              Container(
                color:Color(0xff371B58), //change if u want
              ),
              title: Text('R E M E N T',style: TextStyle(
                  color: Color(0xffe3daff)
              ),),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  view_place()));



                  },
                  child: Container(


                    child: Column(
                      children:  [
                        SizedBox(height: 50,
                        ),

                        Row(
                          children: [
                            SizedBox(width: 135,),
                            Image.asset(
                              'assets/place.png',
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),


                          ],
                        ),
                        SizedBox(height: 10,),
                        Text('PLACEMENT',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            // fontFamily: ,
                            color: Color(0xffe3daff)
                        ),),
                      ],
                    ),
                    height: 210,
                    decoration: BoxDecoration(
                      color:  Color(0xff4C3575),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25.0),
                      //image: '', add asset image here
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: TextButton(
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  view_tech()));

                  },
                  child: Container(


                    child: Column(
                      children:  [
                        SizedBox(height: 50,
                        ),

                        Row(
                          children: [
                            SizedBox(width: 135,),
                            Image.asset(
                              'assets/tech.png',
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),


                          ],
                        ),
                        SizedBox(height: 10,),
                        Text('TECHNICAL',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            // fontFamily: ,
                            color: Color(0xffe3daff)
                        ),),
                      ],
                    ),
                    height: 210,
                    decoration: BoxDecoration(
                      color: Color(0xff4C3575),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25.0),
                      //image: '', add asset image here
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: TextButton(
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  view_cult()));

                  },
                  child: Container(


                    child: Column(
                      children:  [
                        SizedBox(height: 50,
                        ),

                        Row(
                          children: [
                            SizedBox(width: 135,),
                            Image.asset(
                              'assets/cult.png',
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),


                          ],
                        ),
                        SizedBox(height: 10,),
                        Text('CULTURAL',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            // fontFamily: ,
                            color:Color(0xffe3daff)
                        ),),
                      ],
                    ),
                    height: 210,
                    decoration: BoxDecoration(
                      color: Color(0xff4C3575),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25.0),
                      //image: '', add asset image here
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: TextButton(
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  view_others()));

                  },
                  child: Container(


                    child: Column(
                      children:  [
                        SizedBox(height: 50,
                        ),

                        Row(
                          children: [
                            SizedBox(width: 135,),
                            Image.asset(
                              'assets/others.png',
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),


                          ],
                        ),
                        SizedBox(height: 10,),
                        Text('ACADEMICS',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            // fontFamily: ,
                            color: Color(0xffe3daff)
                        ),),
                      ],
                    ),
                    height: 210,
                    decoration: BoxDecoration(
                      color: Color(0xff4C3575),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(25.0),
                      //image: '', add asset image here
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],

      ),
      drawer: MenuDrawer_stud(),
    );
  }
}
