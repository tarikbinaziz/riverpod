import 'package:dio/dio.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/async_notifire/create_post/model/create_post_model.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/features/post/logic/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class CreatePostProviderRepo {
  Future<Response> createPost({required CreatePostModel createPostModel});
}

class CreatePostProviderRepoImpl extends CreatePostProviderRepo {
  final Ref ref;
  CreatePostProviderRepoImpl({required this.ref});
  @override
  Future<Response> createPost(
      {required CreatePostModel createPostModel}) async {
    final respone = await ref
        .read(dioProvider)
        .post("/posts", data: createPostModel.toMap());
    return respone;
  }
}

final createPostServiceProvider = Provider<CreatePostProviderRepo>((ref) {
  return CreatePostProviderRepoImpl(ref: ref);
});
