import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio(
    BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com',
  )
  );
}

// final dioProviderJsonPlaceHolder = Provider<Dio>((ref) {
//   return Dio(BaseOptions(
//     baseUrl: 'https://jsonplaceholder.typicode.com',
//   ));
// });
