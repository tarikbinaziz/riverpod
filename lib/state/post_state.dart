import 'package:flutter/material.dart';
import 'package:flutter_application_1/model.dart';
import 'package:flutter_application_1/service/post_get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
abstract class PostState {}

class InitialState extends PostState {}

class LoadingState extends PostState {}

class LoadedState extends PostState {
  LoadedState({required this.posts});
  final List<PostModel> posts;
}

class ErrorState extends PostState {
  ErrorState({required this.message});
  final String message;
}

class PostNotifire extends StateNotifier<PostState> {
  PostNotifire() : super(InitialState());

  final PostService postService = PostService();

  fetchPost() async {
    try {
      state = LoadingState();
      List<PostModel> posts = await postService.getPost();
      state = LoadedState(posts: posts);
    } catch (e) {
      state = ErrorState(message: e.toString());
    }
  }
}

final postProvider =
    StateNotifierProvider<PostNotifire, PostState>((ref) => PostNotifire());
