import 'package:healthmonitor/src/models/food.dart';
import 'package:healthmonitor/src/services/food_services.dart';
import 'package:riverpod/riverpod.dart';

enum FoodListType {
  all,
}

class FoodListNotifier extends StateNotifier<List<Food>> {
  final Ref ref;
  final FoodListType type;
  FoodListNotifier(this.type, this.ref, [List<Food> initial = const []])
      : super(initial) {
    init();
  }

  removeAt(Food food) async {
    final x = await FoodService().delete(food);
    print(x);
    state = x;
  }

  init() async {
    final items = await FoodService().list();
    state = items;
  }

  add(Food food) async {
    state = [...state, food];
  }
}

final foodListProvider =
    StateNotifierProvider.family<FoodListNotifier, List<Food>, FoodListType>(
        (ref, type) {
  return FoodListNotifier(type, ref);
});
