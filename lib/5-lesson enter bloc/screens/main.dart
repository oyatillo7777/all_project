import 'package:flutter/material.dart';

class Thefifth extends StatefulWidget {
  const Thefifth({super.key});

  @override
  State<Thefifth> createState() => _ThefifthState();
}

class _ThefifthState extends State<Thefifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bloc ")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("0"),
      ]),
    );
  }
}
