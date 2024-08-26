import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/features/post/logic/post_logic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostsPageFutureProviderScreen extends ConsumerWidget {
  const PostsPageFutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsAsyncValue = ref.watch(fetchPostProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: postsAsyncValue.when(
        data: (posts) {
          return ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return ListTile(
              title: Text(post.title),
              subtitle: Text(post.body),
            );
          },
        );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
