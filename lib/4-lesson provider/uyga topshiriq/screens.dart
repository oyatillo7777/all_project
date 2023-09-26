import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  Color rang = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Provider", style: TextStyle(color: rang, fontSize: 25)),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        color: Colors.blue,
                        height: 60,
                        width: 60,
                      ),
                      onTap: () {
                        setState(() {
                          rang = Colors.blue;
                        });
                      },
                    ),
                    InkWell(
                      child: Container(
                        color: Colors.amber,
                        height: 60,
                        width: 60,
                      ),
                      onTap: () {
                        setState(() {
                          rang = Colors.amber;
                        });
                      },
                    ),
                    InkWell(
                      child: Container(
                        color: Colors.red,
                        height: 60,
                        width: 60,
                      ),
                      onTap: () {
                        setState(() {
                          rang = Colors.red;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
