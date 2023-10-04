import 'package:all_project/7-lesson%20lock%20screen/screens/home_page.dart';
import 'package:all_project/7-lesson%20lock%20screen/screens/lock.dart';
import 'package:all_project/7-lesson%20lock%20screen/screens/pin_entry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  String parol = await sharedPreferences.getString('parol') ?? '';
  bool isParolExit = parol == '' ? false : true;
  runApp(MaterialApp(
    home: isParolExit ? Lock(sharedPreferences) : PinEntry(sharedPreferences),
  ));
}

class SeventhMyApp extends StatefulWidget {
  const SeventhMyApp({super.key});

  @override
  State<SeventhMyApp> createState() => _SeventhMyAppState();
}

class _SeventhMyAppState extends State<SeventhMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
