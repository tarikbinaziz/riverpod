import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'store_int.g.dart';
class StoreOnlyInt extends Notifier<int> {
  @override
  int build() {
    return 0;
  }
  setValue(int value) {
    state = value;
  }
}

final storeOnlyIntProvider = NotifierProvider<StoreOnlyInt, int>(() => StoreOnlyInt());

// By generator


@riverpod
class StoreDataInGenerator extends _$StoreDataInGenerator {
  @override
  int build() {
    return 0;
  }
  setValue(int value) {
    state = value;
  }

}