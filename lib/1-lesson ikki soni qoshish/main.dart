import 'package:flutter/material.dart';

class Firts_lesson extends StatefulWidget {
  const Firts_lesson({super.key});

  @override
  State<Firts_lesson> createState() => _Firts_lessonState();
}

class _Firts_lessonState extends State<Firts_lesson> {
  TextEditingController txt = TextEditingController();
  TextEditingController txt1 = TextEditingController();
  int son = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("2 soni qoshish")),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: txt,
            decoration: InputDecoration(
                hintText: 'birinchi sonni yozing',
                border: OutlineInputBorder()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: txt1,
            decoration: InputDecoration(
                hintText: 'ikkinchi sonni yozing',
                border: OutlineInputBorder()),
          ),
        ),
        MaterialButton(
          onPressed: () {
            int firts = int.parse(txt.value.text);
            int second = int.parse(txt1.value.text);
            setState(() {
              son = firts + second;
            });
          },
          child: Text("Qoshish",
              style: TextStyle(
                color: Colors.white,
              )),
          color: Colors.blue,
        ),
        Text(son.toString(),
            style: TextStyle(color: Colors.black, fontSize: 20))
      ]),
    );
  }
}
