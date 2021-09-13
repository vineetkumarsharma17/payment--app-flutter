import 'package:flutter/material.dart';
import 'package:payment_app/Pages/SplashScreenPage.dart';
import 'package:payment_app/screens/HomePageScreen/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
