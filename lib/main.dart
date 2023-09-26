import 'package:all_project/1-lesson%20ikki%20soni%20qoshish/main.dart';
import 'package:flutter/material.dart';

import '2-lesson password va TextFiledni bor sirini ochish/main.dart';
import '3-lesson sheref login/mian.dart';
import '4-lesson provider/main.dart';
import '4-lesson provider/uyga topshiriq/FourthSecondScreen.dart';
import '4-lesson provider/uyga topshiriq/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FourthSecondScreen(),
    );
  }
}
