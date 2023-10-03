import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'lock.dart';

class PinEntry extends StatefulWidget {
  final SharedPreferences sharedPreferences;

  PinEntry(this.sharedPreferences);

  @override
  State<PinEntry> createState() => _PinEntryState();
}

class _PinEntryState extends State<PinEntry> {
  TextEditingController _pinController = TextEditingController();
  TextEditingController _againController = TextEditingController();

  void saqla(String password) async {
    await widget.sharedPreferences.setString('parol', password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter PIN'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _pinController,
                obscureText: true,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  labelText: 'Enter PIN',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _againController,
                obscureText: true,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  labelText: 'Again Enter PIN',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_pinController.value.text ==
                      _againController.value.text) {
                    saqla(_pinController.value.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Lock(widget.sharedPreferences)));

                  }
                  // You can perform other actions here after saving the PIN
                },
                child: Text('Save PIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
