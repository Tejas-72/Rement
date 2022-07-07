import 'package:flutter/material.dart';
import 'package:login/bubbles.dart';
import 'package:login/post/add.dart';
import 'package:login/screens/login.dart';
import 'package:login/screens/subjects.dart';
import 'package:login/view/view_cult.dart';
import 'package:login/view/view_others.dart';
import 'package:login/view/view_tech.dart';
import 'package:login/view/view_place.dart';

import 'drawer.dart';
class UsrHome extends StatelessWidget {
 // const UsrHome ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.add),
    backgroundColor: Colors.blueGrey,
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  add()));


    }),
      backgroundColor: Colors.teal[100],
      body:  CustomScrollView(
        slivers: [
          SliverAppBar(

            backgroundColor: Colors.transparent,
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
                color: Colors.black12, //change if u want
              ),
              title: Text('R E M E N T'),
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
                            color: Colors.white
                        ),),
                      ],
                    ),
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
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
                            color: Colors.white
                        ),),
                      ],
                    ),
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
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
                            color: Colors.white
                        ),),
                      ],
                    ),
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
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
                            color: Colors.white
                        ),),
                      ],
                    ),
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
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
      drawer: MenuDrawer(),
    );
  }
}
// Scaffold(
// appBar: AppBar(
//
// backgroundColor: Colors.redAccent,
// elevation: 0,
// title: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// const Text(
// 'Rement',
// style:TextStyle(color: Colors.black),
// ),
//
// Row(
// children:  [
//
//
// IconButton(icon: Icon(Icons.add), onPressed: () {
// Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));
// },),
// Padding(
// padding: const EdgeInsets.all(15.0),
// child: IconButton(icon: Icon(Icons.add_alert_rounded), onPressed: () {  },),
// ),
// IconButton(icon: Icon(Icons.logout), onPressed: () {
//
// Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
// },),
//
// ],
// )
//
// ],
// ),
// ),
//
// body: SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child: Center(
// child:Column(
// children: [
// Row(
// children: [
// Padding(
// padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
// child:
// Column(
// children: [
// new GestureDetector(
// onTap: (){
// //new screens
// Navigator.push(context, MaterialPageRoute(builder: (context)=>view_place()));
//
//
// },
//
// child: Container(
//
// width: 180,
// height: 120,
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// borderRadius: BorderRadius.circular(12),
// color: Colors.teal,
//
// ),
// child:Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Text('Placements',style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold,
// color: Colors.white,
// ),),
//
// ],
// ),
// ),
// ),
//
// ],
//
// )
//
//
// ),
// Padding(
// padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
// child:
// Column(
// children: [
// new GestureDetector(
// onTap: (){
// //new screens
// Navigator.push(context, MaterialPageRoute(builder: (context)=>view_cult()));
//
//
// },
//
// child: Container(
//
// width: 180,
// height: 120,
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// borderRadius: BorderRadius.circular(12),
// color: Colors.pinkAccent,
//
// ),
// child:Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Text('Cultural',style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold,
// color: Colors.white,
// ),),
//
// ],
// ),
// ),
// ),
//
// ],
//
// )
//
//
// ),
//
//
// ],
// ),
// Row(
// children: [
// Padding(
// padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
// child:
// Column(
// children: [
// new GestureDetector(
// onTap: (){
// //new screens
// Navigator.push(context, MaterialPageRoute(builder: (context)=>view_tech()));
//
//
// },
//
// child: Container(
//
// width: 180,
// height: 120,
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// borderRadius: BorderRadius.circular(12),
// color: Colors.cyan,
//
// ),
// child:Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Text('Technical',style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold,
// color: Colors.white,
// ),),
//
// ],
// ),
// ),
// ),
//
// ],
//
// )
//
//
// ),
// Padding(
// padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
// child:
// Column(
// children: [
// new GestureDetector(
// onTap: (){
// //new screens
// Navigator.push(context, MaterialPageRoute(builder: (context)=>view_others()));
//
//
// },
//
// child: Container(
//
// width: 180,
// height: 120,
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// borderRadius: BorderRadius.circular(12),
// color: Colors.purple,
//
// ),
// child:Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Text('Others',style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold,
// color: Colors.white,
// ),),
//
// ],
// ),
// ),
// ),
//
// ],
//
// )
//
//
// ),
//
//
// ],
// ),
// ],
//
// ),
// ),
//
// ),
// );