import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/store_int/logic/store_int.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/store_int/views/second_sreen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoreOnlyIntScreen extends ConsumerWidget {
  const StoreOnlyIntScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeInt = ref.watch(storeOnlyIntProvider);
    final storeIntGenerator = ref.watch(storeDataInGeneratorProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('StoreOnlyIntScreen')),
      body: Column(
        children: [
          const Center(child: Text('Store Int data')),
          Center(child: Text('$storeIntGenerator')),
          ElevatedButton(
              onPressed: () {
                ref.read(storeDataInGeneratorProvider.notifier).setValue(10);
              },
              child: const Text("add")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StoreOnlyIntSecondScreen()));
              },
              child: const Text("go to second screen")),
        ],
      ),
    );
  }
}
