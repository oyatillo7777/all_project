import 'package:all_project/5-lesson%20enter%20bloc/bloc/number_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => NumberBloc(),
    child: MaterialApp(
      home: Thefifth(),
    ),
  ));
}

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
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<NumberBloc, NumberState>(
                builder: (context, state) {
                  if (state is NumberAddState) {
                    return Text(state.number.toString());
                  } else if (state is NumberRemoveState) {
                    return Text(state.number.toString());
                  } else {
                    return Text('0');
                  }
                },
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<NumberBloc>(context)
                            .add(NumberRemoveEvent());
                      },
                      child: Text('-'),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<NumberBloc>(context)
                            .add(NumberAddEvent());
                      },
                      child: Text('+'),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
