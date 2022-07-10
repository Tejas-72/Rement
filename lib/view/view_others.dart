import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:login/view/view_post.dart';

class view_others extends StatefulWidget {
  const view_others({Key? key}) : super(key: key);

  @override
  State<view_others> createState() => _view_othersState();
}

class _view_othersState extends State<view_others> {
  @override
  Widget build(BuildContext context)  {
    CollectionReference posts = FirebaseFirestore.instance.collection('events');

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff371B58),
          elevation: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  'Academics/Others',
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
                      if(snapshot.data!.docs[index]['sub']=="Others")
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>view_post(title: snapshot.data!.docs[index]['title'], desc: snapshot.data!.docs[index]['desc'], venue: snapshot.data!.docs[index]['venue'], date: snapshot.data!.docs[index]['date'], time: snapshot.data!.docs[index]['time'])));
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
