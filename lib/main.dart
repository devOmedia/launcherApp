import 'package:flutter/material.dart';
import 'package:x_launcher/mainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.light().copyWith(
      
      ),
      home: MainPage()

    );
  }
}