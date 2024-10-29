import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/counter/logic/state_provider.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/counter/views/second_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConterScreen extends ConsumerStatefulWidget {
  const ConterScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ConterState();
}

class _ConterState extends ConsumerState<ConterScreen> {
  @override
  Widget build(BuildContext context) {
    final counterValue = ref.watch(countValueStateProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Column(
        children: [
          Center(child: Text('$counterValue')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondScreen()));
              },
              child: const Text("go to second screen")),
          ElevatedButton(
              onPressed: () {
                ref.read(countValueStateProvider.notifier).state++;
              },
              child: const Text("update value")),
        ],
      ),
    );
  }
}
