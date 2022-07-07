import 'package:flutter/material.dart';
import 'package:login/bubbles.dart';
import 'package:login/post/add_cult.dart';
import 'package:login/post/add_others.dart';
import 'package:login/post/add_tech.dart';
import 'package:login/post/add_place.dart';


class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {







  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const Text(
          'Post',
          style:TextStyle(color: Colors.black),
        ),

      ],
        ),
      ),
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(

              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Column(
                            children: [
                              new GestureDetector(
                                onTap: (){
                                  //new screens
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>add_place()));


                                },

                                child: Container(

                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,

                                    color: Colors.redAccent,

                                  ),
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('P',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),

                                    ],
                                  ),
                                ),
                              ),

                            ],

                          )


                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Column(
                            children: [
                              new GestureDetector(
                                onTap: (){
                                  //new screens
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>add_cult()));
                                  print("Cultural");


                                },

                                child: Container(

                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,

                                    color: Colors.redAccent,

                                  ),
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('C',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          )


                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Column(
                            children: [
                              new GestureDetector(
                                onTap: (){
                                  //new screens
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>add_tech()));
                                  print("Technical");


                                },

                                child: Container(

                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,

                                    color: Colors.redAccent,

                                  ),
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('T',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          )


                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Column(
                            children: [
                              new GestureDetector(
                                onTap: (){
                                  //new screens
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>add_others()));
                                  print("Others");


                                },

                                child: Container(

                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,

                                    color: Colors.redAccent,

                                  ),
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('O',style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),

                                    ],
                                  ),
                                ),
                              ),

                            ],
                          )


                      ),



                    ],
                  ),


                ],

              ),
            ),



        ),
      ),



    );

  }


}