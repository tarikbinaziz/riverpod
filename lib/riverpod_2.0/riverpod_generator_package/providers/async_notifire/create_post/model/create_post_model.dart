// ignore_for_file: public_member_api_docs, sort_constructors_first

class CreatePostModel {
  String title;
  String body;
  int userId;
  CreatePostModel({
    required this.title,
    required this.body,
    required this.userId,
  });

  CreatePostModel copyWith({
    String? title,
    String? body,
    int? userId,
  }) {
    return CreatePostModel(
      title: title ?? this.title,
      body: body ?? this.body,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'body': body,
      'userId': userId,
    };
  }

  factory CreatePostModel.fromMap(Map<String, dynamic> map) {
    return CreatePostModel(
      title: map['title'] as String,
      body: map['body'] as String,
      userId: map['userId'] as int,
    );
  }
}
