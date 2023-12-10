import 'package:dio/dio.dart';
import 'package:flutter_application_1/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider((ref) => Dio());

final apiServiceProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  final apiSer = ApiService(dio);
  return apiSer;
});

final postDataProvider = FutureProvider <List<PostModel>>((ref) async{
  final apiServ = ref.read(apiServiceProvider);
  List<PostModel> data =await apiServ.fetchPost();
  return data;
});

class ApiService {
  Dio dio;

  ApiService(this.dio);
 Future<List<PostModel>> fetchPost() async {
    List<PostModel> posts = [];
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/posts");

    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      for (var element in data) {
        PostModel postModel = PostModel.fromJson(element);
        posts.add(postModel);
      }
    }
    return posts;
  }
}
