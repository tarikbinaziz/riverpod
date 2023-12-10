import 'package:flutter/material.dart';
import 'package:flutter_application_1/future_provider/provider/future_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostScreen extends ConsumerStatefulWidget {
  const PostScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PostScreenState();
}

class _PostScreenState extends ConsumerState<PostScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(postDataProvider);
    final postData = data.value;
    print("=======data ${data.value}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: data.when(data: (data) {
                return ListView.separated(
                  separatorBuilder:(context,index){
                    return Divider();
                  } ,
                  itemCount: postData!.length,
                  itemBuilder: (context, index) {
                    return Text(postData[index].title!);
                  },
                );
              }, error: (error, StackTrace) {
                return Text(error.toString());
              }, loading: () {
                return CircularProgressIndicator();
              }),
      ),
    );
  }
}
