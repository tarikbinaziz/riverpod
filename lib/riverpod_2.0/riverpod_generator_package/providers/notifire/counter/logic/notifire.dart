// make a class  and extend  Notifire

import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifire extends Notifier<int> {
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

final cunterNotifireProvider = NotifierProvider<CounterNotifire, int>(
    () => CounterNotifire());