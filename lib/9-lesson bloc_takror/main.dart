import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/text_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => TextBloc(),
    child: MaterialApp(
      home: Nineth(),
    ),
  ));
}

class Nineth extends StatefulWidget {
  const Nineth({super.key});

  @override
  State<Nineth> createState() => _NinethState();
}

class _NinethState extends State<Nineth> {
  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
      ),
      body: Column(
        children: [
          TextField(
            controller: txtController,
            decoration:
                InputDecoration(hintText: 'Text', border: OutlineInputBorder()),
          ),
          MaterialButton(
            onPressed: () {
              BlocProvider.of<TextBloc>(context)
                  .add(ChangeEvent(txtController.value.text));
              txtController.clear();
            },
            child: Text("o'zgartirish"),
          ),
          BlocBuilder<TextBloc, TextState>(builder: (context, state) {
            if (state is ChangeState) {
              return Text("Salom  " + state.text);
            } else {
              return Text("No ma'lum");
            }
          })
        ],
      ),
    );
  }
}
