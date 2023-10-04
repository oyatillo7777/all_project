import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class Lock extends StatefulWidget {
  final SharedPreferences sharedPreferences;

  Lock(this.sharedPreferences);

  @override
  State<Lock> createState() => _LockState();
}

class _LockState extends State<Lock> {
  TextEditingController _againController = TextEditingController();
  String parol = '';
  bool isVisible = true;

  void parolniOqi() async {
    parol = widget.sharedPreferences.getString('parol') ?? '';
  }

  @override
  void initState() {
    parolniOqi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lock"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: isVisible,
              controller: _againController,
              decoration: InputDecoration(
                  suffixIcon: isVisible
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: Icon(Icons.panorama_fish_eye))
                      : InkWell(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: Icon(Icons.remove_red_eye)),
                  hintText: "parolni  kiriting",
                  border: OutlineInputBorder()),
            ),
          ),
          MaterialButton(
            onPressed: () {
              if (_againController.value.text == parol) {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              }
            },
            color: Colors.blue,
            child: Text("ok"),
          )
        ],
      ),
    );
  }
}
