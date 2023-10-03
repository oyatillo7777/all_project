part of 'post_bloc.dart';

@immutable
abstract class PostState {}

class PostInitial extends PostState {}

class PostSuccess extends PostState {
  List<Post> posts;

  PostSuccess(this.posts);
}
