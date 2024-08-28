import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/async_notifire/create_post/views/create_post_views.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/store_int/views/store_only_int_views.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/store_list/views/store_list_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CreatePostAnyncNotifireScreen(),
    );
  }
}
