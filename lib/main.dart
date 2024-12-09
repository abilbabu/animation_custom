import 'package:animation_custom/homescreen/homescreen.dart';
import 'package:animation_custom/teen_screen/teen_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TweenScreen(),
    );
  }
}
