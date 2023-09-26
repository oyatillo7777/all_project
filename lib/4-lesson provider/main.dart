import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/counter.dart'; // Assuming this is the correct import for your CounterProvider

class Fourth extends StatefulWidget {
  const Fourth({Key? key}) : super(key: key);

  @override
  _FourthState createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Provider"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<CounterProvider>(builder: (context, value, child) {
                  return Text(value.counter.toString());
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          Provider.of<CounterProvider>(context, listen: false)
                              .increment();
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          Provider.of<CounterProvider>(context, listen: false)
                              .decrement(); // Implement decrement
                        },
                        child: const Icon(Icons.remove),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
