import 'package:all_project/4-lesson%20provider/uyga%20topshiriq/model/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FourthSecondScreen extends StatefulWidget {
   FourthSecondScreen({Key? key});

  @override
  _FourthSecondScreenState createState() => _FourthSecondScreenState();
}

class _FourthSecondScreenState extends State<FourthSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorProvider(),
      child: Builder(builder: (BuildContext context) {
        return Scaffold(
          body: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<ColorProvider>(
                    builder: (context, value, child) {
                      print(value);
                      return Text("Provider",
                          style: TextStyle(fontSize: 25, color: value.color));
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Provider.of<ColorProvider>(context,listen: false)
                              .changeColor(Colors.blue);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.blue,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Provider.of<ColorProvider>(context,listen: false)
                              .changeColor(Colors.red);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.red,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Provider.of<ColorProvider>(context,listen: false)
                              .changeColor(Colors.green);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
