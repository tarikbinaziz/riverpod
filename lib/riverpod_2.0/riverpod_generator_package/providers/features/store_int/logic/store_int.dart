import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'store_int.g.dart';

final storeIntData = StateProvider<int>((ref) => 0);


@riverpod
int storeInt (StoreIntRef ref) {
  return 0;
}