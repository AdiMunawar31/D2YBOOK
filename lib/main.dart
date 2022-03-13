import 'package:d2ybook/screens/home_screen.dart';
import 'package:d2ybook/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'D2YBOOK',
      theme: ThemeData(fontFamily: 'Urbanist'),
      home: HomeScreen(),
    );
  }
}
