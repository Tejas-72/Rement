import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:login/view/view_post.dart';

class view_tech extends StatefulWidget {
  const view_tech({Key? key}) : super(key: key);

  @override
  State<view_tech> createState() => _view_techState();
}

class _view_techState extends State<view_tech> {
  @override
  Widget build(BuildContext context) {
    CollectionReference posts = FirebaseFirestore.instance.collection('events');

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff371B58),
          elevation: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  'Technical',
                  style:TextStyle(color: Color(0xffefe5ff)),
                ),
              ]
          )

      ),
      body:StreamBuilder<QuerySnapshot>(
          stream:posts.snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) return new Text("No events");
            return Center(
              child: Container(
                child: ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context,int index){
                      if(snapshot.data!.docs[index]['sub']=="Technical")
                        return new Card(
                          child:
                          ListTile(

                            title: Text(snapshot.data!.docs[index]['title']),
                            subtitle: Text(snapshot.data!.docs[index]['desc']),
                            leading: Icon(Icons.person),
//trailing: Icon(Icons.star),
                            contentPadding: EdgeInsets.all(10),
                            selectedTileColor: Colors.amber,
                            onTap: ()
                            {
                              //view post
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>view_post(title: snapshot.data!.docs[index]['title'], desc: snapshot.data!.docs[index]['desc'], venue: snapshot.data!.docs[index]['venue'], date: snapshot.data!.docs[index]['date'], )));
                            },
//onTap: ,
//onLongPress: ,
                          ),

                        );
                      return SizedBox();
                    }


                ),
              ),
            );


          }),
    );
  }
}
