import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_5/screens/homescreen.dart';
import 'package:flutter_application_5/screens/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
    

  }
}
