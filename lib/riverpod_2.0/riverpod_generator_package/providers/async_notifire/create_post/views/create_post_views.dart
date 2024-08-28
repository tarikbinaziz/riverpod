import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/async_notifire/create_post/logic/create_post_provider_statenotifire.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/async_notifire/create_post/model/create_post_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreatePostAnyncNotifireScreen extends ConsumerStatefulWidget {
  const CreatePostAnyncNotifireScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreatePostAnyncNotifireScreenState();
}

class _CreatePostAnyncNotifireScreenState
    extends ConsumerState<CreatePostAnyncNotifireScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('CreatePostAnyncNotifireScreen')),
        body: Column(
          children: [
            const Center(child: Text('CreatePostAnyncNotifireScreen')),
            ElevatedButton(
                onPressed: () {
                  ref
                      .read(createPostAsyncNotifireProvider.notifier)
                      .createPost(
                          createPostModel: CreatePostModel(
                        title: "title",
                        body: "body",
                        userId: 1,
                      ))
                      .then((val) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("post create successfully")));
                  });
                },
                child: const Text("add"))
          ],
        ));
  }
}
