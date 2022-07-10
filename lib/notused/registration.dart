import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/models/user_model.dart';
import 'package:login/notused/home_screen.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _formkey= GlobalKey<FormState>();

  final _auth=FirebaseAuth.instance;

  final firstnameController =new TextEditingController();
  final secondnameController =new TextEditingController();
  final emaileditController =new TextEditingController();
  final passwordeditController =new TextEditingController();
  final confirmpasswordeditController =new TextEditingController();


  @override
  Widget build(BuildContext context) {





    final firstnamefield =TextFormField(
      autofocus: false,
      controller: firstnameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First Name cannot be empty");
        }
        if (!regex.hasMatch(value)) {
          return (" enter valid name..minimum 3 characters");
        }
        return null;
      },

      onSaved: (value)
      {
        firstnameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20 , 15, 20, 15),
        hintText: "Firts Name",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );

    final secondnamefield =TextFormField(
      autofocus: false,
      controller: secondnameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First Name cannot be empty");
        }

      },

      onSaved: (value)
      {
        secondnameController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20 , 15, 20, 15),
        hintText: "Second name",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );

    final emailField =TextFormField(
      autofocus: false,
      controller: emaileditController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("please enter your email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please enter a valid email");
        }
        return null;
      },

      onSaved: (value)
      {
        emaileditController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20 , 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );

    final passwordfield =TextFormField(
      autofocus: false,
      controller: passwordeditController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("please enter valid password..minimum 6 characters");
        }
      },

      onSaved: (value)
      {
        passwordeditController.text=value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20 , 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );

    final confirmpasswordfield =TextFormField(
      autofocus: false,
      controller: confirmpasswordeditController,
      obscureText: true,
      validator: (value)
      {
        if(confirmpasswordeditController.text!= passwordeditController.text)
          {
            return("password dont match");
          }

        return null;
      },

      onSaved: (value)
      {
        confirmpasswordeditController.text=value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20 , 15, 20, 15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );


    final signupbtn =Material(

      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20 , 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          signup(emaileditController.text, passwordeditController.text);

        },
        child: Text('SIGN UP',textAlign: TextAlign.center,style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),



      ),
    );

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.redAccent),
          onPressed: (){
            Navigator.of(context).pop();
          },
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
                    SizedBox(
                      height: 180,
                      child: Image.asset("assets/profile.png",fit: BoxFit.contain,),

                    ),
                    SizedBox(height: 45),
                    firstnamefield,
                    SizedBox(height: 20),
                    secondnamefield,
                    SizedBox(height: 20),
                    emailField,
                    SizedBox(height: 20),
                    passwordfield,
                    SizedBox(height: 20),
                    confirmpasswordfield,
                    SizedBox(height: 20),
                    signupbtn,
                    SizedBox(height: 20),




                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signup(String email,String password) async

  {
    if(!_formkey.currentState!.validate())
      {
        await _auth.createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {
              postdetailstofirebase()
        }).catchError((e)
            {
              Fluttertoast.showToast(msg: e!.message);
            }
        );
      }
  }

  postdetailstofirebase() async{
    //calling firestore
    //vcalling usermodel
    //sending these values

    FirebaseFirestore firebasefirestore=FirebaseFirestore.instance;
    User? user=_auth.currentUser;

    UserModel usermodel =UserModel();
    usermodel.email=user!.email;
    usermodel.uid=user.uid;
    usermodel.firstname=firstnameController.text;
    usermodel.secondname=secondnameController.text;

    await firebasefirestore
    .collection("users")
    .doc(user.uid)
    .set(usermodel.toMap());
    Fluttertoast.showToast(msg: "Account created successfullly :)");

    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>homescreen()), (route) => false);
    }
}

