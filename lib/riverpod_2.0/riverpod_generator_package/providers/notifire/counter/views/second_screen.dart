import 'package:flutter/material.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/counter/logic/state_provider.dart';
import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/notifire/counter/views/conter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecondScreen extends ConsumerStatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends ConsumerState<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final counterValue = ref.watch(countValueStateProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('SecondScreen')),
      body: Column(
        children: [
          Center(child: Text('$counterValue')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ConterScreen()));
              },
              child: const Text("go to counter screen"))
        ],
      ),
    );
  }
}
