import 'package:dio/dio.dart';
import 'package:flutter_application_1/model.dart';

class PostService {
  static const baseUrl = "https://jsonplaceholder.typicode.com/posts";

  final dio = Dio();

  Future <List<PostModel>> getPost() async {
    List<PostModel> posts = [];
    final response = await dio.get(baseUrl);
    print("====Response $response");
    print("====Response data ${response.data}");

    if (response.statusCode == 200) {
      List<dynamic> postData = response.data;
      for (var i in postData) {
        PostModel postModel = PostModel.fromJson(i);
        posts.add(postModel);
      }
    }
    return posts;
  }
}
