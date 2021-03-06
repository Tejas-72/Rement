import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class add_cult extends StatefulWidget {
  const add_cult({Key? key}) : super(key: key);

  @override
  State<add_cult> createState() => _add_cultState();
}

class _add_cultState extends State<add_cult> {

  final TextEditingController titleController = new TextEditingController();
  final TextEditingController descController = new TextEditingController();
  final TextEditingController venueController = new TextEditingController();
  final TextEditingController dateController = new TextEditingController();
  final TextEditingController timecontroller = new TextEditingController();

  Random random = new Random();

  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {


    final titlefield = TextFormField(
      autofocus: false,
      controller: titleController,
      keyboardType: TextInputType.multiline,
      validator: (value) {
        if (value!.isEmpty) {
          return ("please enter your title");
        }

        return null;
      },

      onSaved: (value) {
        titleController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.title),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Title",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );

    final descfield = TextFormField(
      autofocus: false,
      controller: descController,
      keyboardType: TextInputType.multiline,
      validator: (value) {
        if (value!.isEmpty) {
          return ("please enter Description");
        }

        return null;
      },

      onSaved: (value) {
        titleController.text = value!;
      },
      textInputAction: TextInputAction.next,
      textAlign: TextAlign.justify,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.description),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Description",

        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );

    final venuefield = TextFormField(
      autofocus: false,
      controller: venueController,
      keyboardType: TextInputType.multiline,
      validator: (value) {
        if (value!.isEmpty) {
          return ("please enter your location");
        }

        return null;
      },

      onSaved: (value) {
        venueController.text = value!;
      },
      textInputAction: TextInputAction.next,
      textAlign: TextAlign.justify,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.location_on_outlined),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Location",

        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );

    final datefield=DateTimePicker(
      controller: dateController,
      type: DateTimePickerType.dateTimeSeparate,
      dateMask: 'd MMM, yyyy',
      initialValue: null,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      icon: Icon(Icons.event),
      dateLabelText: 'Date',
      timeLabelText: "Hour",
      selectableDayPredicate: (date) {
        // Disable weekend days to select from the calendar
        if (date.weekday == 6 || date.weekday == 7) {
          return false;
        }

        return true;
      },
      onChanged: (val) => print(val),
      validator: (val) {
        print(val);
        return null;
      },
      onSaved: (val) => print(val),
    );
    // final datefield = TextFormField(
    //   autofocus: false,
    //   controller: dateController,
    //   keyboardType: TextInputType.text,
    //   validator: (value) {
    //     if (value!.isEmpty) {
    //       return ("please enter date");
    //     }
    //
    //     return null;
    //   },
    //
    //   onSaved: (value) {
    //     dateController.text = value!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   textAlign: TextAlign.justify,
    //   decoration: InputDecoration(
    //     prefixIcon: Icon(Icons.date_range),
    //     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    //     hintText: "Date",
    //
    //     border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(10)
    //     ),
    //   ),
    // );
    // final timefield = TextFormField(
    //   autofocus: false,
    //   controller: timecontroller,
    //   keyboardType: TextInputType.text,
    //   validator: (value) {
    //     if (value!.isEmpty) {
    //       return ("please enter time");
    //     }
    //
    //     return null;
    //   },

    //   onSaved: (value) {
    //     titleController.text = value!;
    //   },
    //   textInputAction: TextInputAction.next,
    //   textAlign: TextAlign.justify,
    //   decoration: InputDecoration(
    //     prefixIcon: Icon(Icons.access_time),
    //     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    //     hintText: "Date",
    //
    //     border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(10)
    //     ),
    //   ),
    // );

    final postbtn = Material(

      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color(0xff371B58),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        onPressed: () {
          int evid = random.nextInt(1000);
          post_events("Cultural", titleController.text, descController.text, venueController.text, dateController.text, evid.toString());
        },
        child: Text('POST', textAlign: TextAlign.center, style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),


      ),
    );

    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff371B58),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Cultural',
              style:TextStyle(color: Color(0xffe6d8ff)),
            ),

          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(height: 45),
                    titlefield,
                    SizedBox(height: 25),
                    descfield,
                    SizedBox(height: 25),
                    venuefield,
                    SizedBox(height: 25),
                    datefield,
                    SizedBox(height: 25),

                    postbtn,


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> post_events(String sub,String title,String desc,String ven,String date, String eventid) async
  {
    CollectionReference events = FirebaseFirestore.instance.collection('events');
    FirebaseAuth auth =FirebaseAuth.instance;
    events.add({
      "sub": sub,
      "title": title,
      "venue": ven,
      "desc": desc,
      "date": date,
      "eventid": eventid,

    }
    );
    return;
  }
}


