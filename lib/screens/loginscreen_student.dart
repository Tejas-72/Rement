import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/screens/home.dart';
import 'package:login/screens/home_screen.dart';
import 'package:login/screens/home_screen_stud.dart';
import 'package:login/screens/home_stud.dart';
import 'package:login/screens/login.dart';

import 'package:login/screens/registration.dart';


class loginscreenst extends StatefulWidget {
  const loginscreenst({Key? key}) : super(key: key);

  @override
  State<loginscreenst> createState() => _loginscreenstState();
}

class _loginscreenstState extends State<loginscreenst> {
  //form key
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailcontroller = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  //firebase

  final _auth = FirebaseAuth.instance;





  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      autofocus: false,
      controller: emailcontroller,
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

      onSaved: (value) {
        emailcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );

    final passwordfield = TextFormField(
      autofocus: false,
      controller: passwordController,
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


      onSaved: (value) {
        emailcontroller.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );

    final loginbtn = Material(

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
          signin(emailcontroller.text, passwordController.text);
        },
        child: Text('LOGIN', textAlign: TextAlign.center, style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),


      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
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
                      height: 200,
                      child: Image.asset(
                        "assets/profile.png", fit: BoxFit.contain,),

                    ),
                    SizedBox(height: 45),
                    emailField,
                    SizedBox(height: 25),

                    passwordfield,
                    SizedBox(height: 35),
                    loginbtn,
                    SizedBox(height: 15),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signin(String email, String password) async
  {

    if(_formkey .currentState!.validate())
    {
      await _auth.signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
        Fluttertoast.showToast(msg: "Login Successful"),

        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>UsrHome_stud()))
      }).catchError((e){
        Fluttertoast.showToast(msg: e!.message);
      });

    }
  }

}
