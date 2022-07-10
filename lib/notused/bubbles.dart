import 'package:flutter/material.dart';
class Bubbles extends StatelessWidget {

  final String text;

  Bubbles({required this.text});



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        Column(
          children: [
            new GestureDetector(
              onTap: (){
                //new screens
              },
            ),
            Container(
              height: 150.0,
              width: 170.0,

              child: Icon(Icons.speaker, color: Colors.white, size: 50.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10)
              ),
            ),

          ],
        )


    );

  }
}