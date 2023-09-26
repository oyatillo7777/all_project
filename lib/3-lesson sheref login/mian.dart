import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences preferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  preferences = await SharedPreferences.getInstance();
  bool isLogged = preferences.getBool("isLogged") ?? false;
  runApp(MaterialApp(
    home: isLogged ? Threeth_Page() : ThreeTh(),
  ));
}

class ThreeTh extends StatefulWidget {
  const ThreeTh({super.key});

  @override
  State<ThreeTh> createState() => _ThreeThState();
}

class _ThreeThState extends State<ThreeTh> {
  TextEditingController txtLogin = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Login Screen", style: TextStyle(color: Colors.black)),
          forceMaterialTransparency: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtLogin,
              decoration: InputDecoration(
                  hintText: 'Login',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: txtPassword,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Threeth_Page()));
            },
            child: Text("OK", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }

  void saqla() async {
    preferences.setBool("isLogged", true);
  }
}

class Threeth_Page extends StatefulWidget {
  const Threeth_Page({super.key});

  @override
  State<Threeth_Page> createState() => _Threeth_PageState();
}

class _Threeth_PageState extends State<Threeth_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second")),
    );
  }
}
