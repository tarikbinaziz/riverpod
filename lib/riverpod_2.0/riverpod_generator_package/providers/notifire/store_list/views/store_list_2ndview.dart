import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/store_list/logic/store_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoreListSecondScreen extends ConsumerWidget {
  const StoreListSecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeInt = ref.watch(storeListProvider);
    List<int> listInt = [11,12,13,14,15];
    return Scaffold(
      appBar: AppBar(title: const Text('StoreInt2ndScreen')),
      body: Column(
        children: [
          const Center(child: Text('StoreListScreen')),
          Center(child: Text('$storeInt')),
          ElevatedButton(
              onPressed: () {
                ref.read(storeListProvider.notifier).addItemToList(listInt);
              },
              child: const Text("add"))
        ],
      ),
    );
  }
}
