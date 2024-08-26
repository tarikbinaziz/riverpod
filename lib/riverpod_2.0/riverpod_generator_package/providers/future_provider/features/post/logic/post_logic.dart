import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/future_provider/features/post/logic/dio_provider.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/future_provider/features/post/model/post_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postFutureProvider = FutureProvider<List<Post>>((ref) async {
  debugPrint('fetching posts');

  final dio = ref.read(dioProviderJsonPlaceHolder);
  final response = await dio.get("/posts");
  List<dynamic> data = response.data;
  return data.map((e) => Post.fromJson(e)).toList();
});
