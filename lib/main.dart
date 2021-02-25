import 'package:flutter/material.dart';
import 'package:foodelivery/src/screens/home_screen.dart';
import 'file:///C:/Users/Usuario/IdeaProjects/foodelivery/lib/src/commons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        primarySwatch: red,
      ),
      home: HomeScreen(),
    );
  }
}