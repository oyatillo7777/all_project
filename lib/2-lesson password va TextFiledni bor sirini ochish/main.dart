import 'package:all_project/2-lesson%20password%20va%20TextFiledni%20bor%20sirini%20ochish/widget/screen.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Text(
              "Log in",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Ma'lumotingizni himoyalash uchun pin kodni kiriting",
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Password_TextFiled(
            hintText: 'Log in',
            controller: login,
          ),
          const SizedBox(
            height: 20,
          ),
          Password_TextFiled(
            hintText: 'Qayta kiriting',
            controller: password,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              onPressed: () {},
              child: Text("Yuborish", style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          )
        ]),
      ),
    );
  }
}
