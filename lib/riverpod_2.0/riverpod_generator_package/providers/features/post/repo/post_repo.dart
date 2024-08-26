import 'package:dio/dio.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/features/post/logic/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'post_repo.g.dart';

abstract class PostRepo {
  Future<Response> fetchPost();
}

class PostService implements PostRepo {
  final Dio dio;
  PostService(this.dio);
  @override
  Future<Response> fetchPost() async {
    final response = await dio.get("/posts");
    return response;
  }
}

@riverpod
PostService postServiceProvider(PostServiceProviderRef ref) {
  final dio = ref.watch(dioProvider);
  return PostService(dio);
}
