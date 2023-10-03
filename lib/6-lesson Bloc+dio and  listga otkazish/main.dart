import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:all_project/6-lesson%20Bloc+dio%20and%20%20listga%20otkazish/bloc/post_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => PostBloc(),
      child: MaterialApp(home: MyApp()),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    BlocProvider.of<PostBloc>(context).add(GetPostEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: BlocBuilder<PostBloc, PostState>(builder: (context, state) {
          if (state is PostInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PostSuccess) {
            return ListView.builder(itemBuilder: (context, index) {
              return Container(
                height: 100,
                width: 200,
                child: Text(state.posts[index].body.toString()),
              );
            });
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}
