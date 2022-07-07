import 'package:firebase_core/firebase_core.dart';

class UserModel
{
  String? uid;
  String? email;
  String? firstname;
  String? secondname;
  String? cat;

  UserModel({this.uid,this.email,this.firstname,this.secondname,this.cat});


  //Receive data from server
factory UserModel.fromMap(map)
{
  return UserModel(
    uid: map['uid'],
    email: map['email'],
    firstname: map['firstname'],
    secondname: map['secondname'],
    cat:map['cat'],


  );
}

//Send
Map<String,dynamic> toMap() {
  return {
    'uid': uid,
    'email': email,
    'firstname': firstname,
    'secondname': secondname,
    'cat':cat,
  };
}


}



