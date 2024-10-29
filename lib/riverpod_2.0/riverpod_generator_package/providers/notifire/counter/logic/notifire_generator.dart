import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifire_generator.g.dart';


@riverpod
class CounterNotifire extends _$CounterNotifire {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

// final cunterNotifireProvider =
//     NotifierProvider<CounterNotifire, int>(() => CounterNotifire());
