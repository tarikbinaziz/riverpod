import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/store_list/logic/store_list.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/store_list/views/store_list_2ndview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoreListScreen extends ConsumerWidget {
  const StoreListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeInt = ref.watch(storeListProvider);
    List<int> listInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return Scaffold(
      appBar: AppBar(title: const Text('StoreIntScreen')),
      body: Column(
        children: [
          const Center(child: Text('StoreIntScreen')),
          Center(child: Text('$storeInt')),
          ElevatedButton(
              onPressed: () {
                ref.read(storeListProvider.notifier).addItemToList(listInt);
              },
              child: const Text("add")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StoreListSecondScreen()));
              },
              child: const Text("go to second screen")),
        ],
      ),
    );
  }
}
