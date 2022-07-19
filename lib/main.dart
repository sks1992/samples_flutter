import 'package:flutter/material.dart';

import 'demo1/screens/home_screen.dart';
import 'demo2/screens/home2_screen.dart';
import 'demo3/screens/home3_screen.dart';
import 'demo4/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter demo",
      //home: HomeScreen1(),
      //home: HomeScreen2(),
      //home: HomeScreen3(),
      home: LoginScreen(),
    );
  }
}