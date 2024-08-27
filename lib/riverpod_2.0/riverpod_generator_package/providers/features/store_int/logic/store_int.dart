import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'store_int.g.dart';

// by Future Provider
final storeIntFutureProvider = FutureProvider<int>((ref) async {
  return 0;
});

// by State Provider
final storeIntData = StateProvider<int>((ref) => 0);

// by new Notifier Provider



class StoreInt extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}

/// we can directly update state previous way and also do withn crate method like increment
final storeIntProvider = NotifierProvider<StoreInt, int>(() => StoreInt());


// do with generator


@riverpod
class CounterInt extends _$CounterInt {
  @override
  int build() {
    return 0;
  }
  void increment() {
    state++;
  }


}