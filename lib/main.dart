import 'package:flutter/material.dart';
import 'package:foodelivery/src/helpers/commons.dart';
import 'package:foodelivery/src/screens/login_screen.dart';

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
      home: LoginScreen(),
    );
  }
}