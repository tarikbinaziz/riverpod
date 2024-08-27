import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store_list.g.dart';


@riverpod
class StoreList extends _$StoreList {
  @override
  List<int> build() {
    return [];
  }

  addItemToList(List<int> items) {
    state = [...state,...items];
  }
}