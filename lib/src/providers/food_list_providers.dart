import 'package:healthmonitor/src/models/food.dart';
import 'package:riverpod/riverpod.dart';

enum FoodListType {
  all,
}

class FoodListNotifier extends StateNotifier<List<Food>> {
  final Ref ref;
  final FoodListType type;
  FoodListNotifier(this.type, this.ref, [List<Food> initial = const []]) : super(initial);
}

final foodListProvider =
    StateNotifierProvider.family<FoodListNotifier, List<Food>, FoodListType>(
        (ref, type) {
  return FoodListNotifier(type,ref);
});
