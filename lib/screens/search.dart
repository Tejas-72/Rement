import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/search_results.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context)  {
    final TextEditingController srchcontroller = new TextEditingController();
    
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
              color: Color(0xfff0e4ff)
          ),
          backgroundColor: Color(0xff371B58),
          elevation: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  'Search',
                  style:TextStyle(color: Color(0xffefddff)),
                ),
              ]
          )

      ),
      body:  Container(
        margin: EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: TextField(
                    controller: srchcontroller,
                    // onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                      hintText: "Search",
                      suffixIcon: const Icon(Icons.search),
                      // prefix: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                  ),
                ),

                Column(
                  children: [
                    new GestureDetector(
                      onTap: (){
                        //new screens
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>search_res(text:srchcontroller.text.toString() )));


                      },
                    child:
                    Container(

                        margin: EdgeInsets.only (left: 10),
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            color: Color(0xff371B58),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Icon(Icons.send,color: Color(0xfff0e0ff),),
                        width: 40
                    ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
