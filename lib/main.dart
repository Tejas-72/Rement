import 'package:flutter/material.dart';
import 'package:login/post/add.dart';
import 'package:login/screens/getstarted.dart';
import 'package:login/screens/login_screen.dart';
  import 'package:firebase_core/firebase_core.dart';



Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: getstarted(),
    );
  }
}