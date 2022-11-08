import 'package:flutter/material.dart';
import 'package:railme/screens/homescreen.dart';
import 'package:railme/screens/login.dart';
import 'package:railme/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' :(context)=>Login(),
        'CreateAccount':(context)=>SignUp(),
        'HomePage':(context)=>Seats(),
      },
    );
  }
}
