import 'package:flutter/material.dart';
class Subjects extends StatelessWidget {
   Subjects({
    Key? key,
    required this.text,
    required this.text1,
    required this.onPressed,

  }) : super(key: key);

  final String text,text1;
 dynamic Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: TextButton(
            onPressed: () {



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
                        text1,
                        height: 60.0,
                        fit: BoxFit.cover,
                  ),


                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(text,style: TextStyle(
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
    );
  }
}