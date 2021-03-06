import 'package:flutter/material.dart';

class view_post extends StatelessWidget {

  final String title,desc,venue,date;

  view_post({required this.title,required this.desc,required this.venue,required this.date});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff371B58),
          elevation: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  'View Post',
                  style:TextStyle(color: Color(0xfff0e3fd)),
                ),
              ]
          )

      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,

          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,15,10,15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('TITLE:  '+' '+title,style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Colors.black,
                          ),),


                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('DESCRIPTION:  '+' '+desc,style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Colors.black,
                          ),),


                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('VENUE:  '+' '+venue,style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Colors.black,
                          ),),


                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('DATE & TIME:'+' '+date,style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Colors.black,
                          ),),


                        ],
                      ),
                      SizedBox(height: 20,),
                      // Row(
                      //   children: [
                      //     Text('TIME:  '+' '+time,style: TextStyle(
                      //       fontWeight: FontWeight.normal,
                      //       fontSize: 25,
                      //       color: Colors.black,
                      //     ),),
                      //
                      //
                      //   ],
                      // ),
                      SizedBox(height: 20,),

                    ],
                  ),
                ),
              )
            ],

          ),

        ),


            );

  }
}
