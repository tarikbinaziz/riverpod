import 'package:flutter/material.dart';
import 'package:flutter_application_1/state/post_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, w) {
        PostState state = ref.watch(postProvider);
        if (state is InitialState) {
          return Text("show all post");
          // ref.read(postProvider.notifier).fetchPost();
        }
        if (state is LoadingState) {
          return CircularProgressIndicator();
        }
        if (state is ErrorState) {
          return Text(state.message);
        }
        if (state is LoadedState) {
          buildList(state);
        }
        return Column(
          children: [],
        );
      }),
    );
  }

  buildList(LoadedState state) {
    return ListView.builder(
        itemCount: state.posts.length,
        itemBuilder: (context, index) {
          var post = state.posts[index];
          return Text(post.id.toString());
        });
  }
}
