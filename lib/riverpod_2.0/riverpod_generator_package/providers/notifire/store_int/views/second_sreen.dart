import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/store_int/logic/store_int.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StoreOnlyIntSecondScreen extends ConsumerWidget {
  const StoreOnlyIntSecondScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeInt = ref.watch(storeDataInGeneratorProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('StoreOnlyInt@ndScreen')),
      body: Column(
        children: [
          const Center(child: Text('Store Int data')),
          Center(child: Text('$storeInt')),
          ElevatedButton(
              onPressed: () {
                ref.read(storeDataInGeneratorProvider.notifier).setValue(8);
              },
              child: const Text("add"))
        ],
      ),
    );
  }
}
