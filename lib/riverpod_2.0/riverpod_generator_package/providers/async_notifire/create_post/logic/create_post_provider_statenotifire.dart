import 'dart:async';

import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/async_notifire/create_post/logic/create_post_provider_repo.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/async_notifire/create_post/model/create_post_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_post_provider_statenotifire.g.dart';

// can not use generator to create provider with StateNotifire
class CreatePostProviderStatenotifire extends StateNotifier<AsyncValue<void>> {
  final Ref ref;
  CreatePostProviderStatenotifire(this.ref) : super(const AsyncData(null));

  Future<void> createPost({required CreatePostModel createPostModel}) async {
    final createPostServier = ref.watch(createPostServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await createPostServier.createPost(createPostModel: createPostModel);
    });
  }
}

// By  Async Notifire normal

class CreatePostAsyncNotifireNormal extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {}

  Future<void> createPost({required CreatePostModel createPostModel}) async {
    final createPostServier = ref.watch(createPostServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await createPostServier.createPost(createPostModel: createPostModel);
    });
  }
}

final createPostAsyncNotifireProviderNormal =
    AsyncNotifierProvider<CreatePostAsyncNotifireNormal, void>(
        () => CreatePostAsyncNotifireNormal());

// By  Async Notifire by generator

@riverpod
class CreatePostAsyncNotifire extends _$CreatePostAsyncNotifire {
  @override
  FutureOr<void> build() {}

  Future<void> createPost({required CreatePostModel createPostModel}) async {
    final createPostServier = ref.watch(createPostServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await createPostServier.createPost(createPostModel: createPostModel);
    });
  }
}
