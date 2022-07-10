import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../view/view_post.dart';

class search_res extends StatelessWidget {
  final String text;

  search_res({required this.text});
  // const search_res({Key? key}) : super(key: key);

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
                  'Search Results',
                  style:TextStyle(color: Color(0xffe0ddff)),
                ),
              ]
          )

      ),
      body: StreamBuilder<QuerySnapshot>(
          stream:posts.snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) return new Text("No events");
            else if(!snapshot.hasData==false) return Text("No Results found",style: TextStyle(fontSize: 30),);
            return Center(
              child: Container(
                child: ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context,int index){
                      if(snapshot.data!.docs[index]['title']==text)
                        return new Card(
                          child:
                          ListTile(

                            title: Text(snapshot.data!.docs[index]['title']),
                            subtitle: Text(snapshot.data!.docs[index]['desc']),
                            leading: Icon(Icons.local_activity_rounded),
//trailing: Icon(Icons.star),
                            contentPadding: EdgeInsets.all(10),
                            selectedTileColor: Colors.amber,
                            onTap: ()
                            {
                              //view post
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>view_post(title: snapshot.data!.docs[index]['title'], desc: snapshot.data!.docs[index]['desc'], venue: snapshot.data!.docs[index]['venue'], date: snapshot.data!.docs[index]['date'],)));
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
