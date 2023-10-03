import 'dart:async';

import 'package:all_project/7-lesson%20Bloc+dio%20and%20%20listga%20otkazish/networking/networking.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../model/post.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  Networking networking = Networking();

  PostBloc() : super(PostInitial()) {
    on<PostEvent>((event, emit) {});
    on<GetPostEvent>((event, emit) async {
      var response = await networking.getPosts();
      emit(PostSuccess(response));
    });
  }
}
