import 'package:healthmonitor/src/models/food.dart';
import 'package:riverpod/riverpod.dart';

enum FoodListType {
  all,
}

class FoodListNotifier extends StateNotifier<List<Food>> {
  final Ref ref;
  final FoodListType type;
  FoodListNotifier(this.type, this.ref, [List<Food> initial = const []])
      : super(initial);

  list() {
    state = [];
  }
}

final foodListProvider =
    StateNotifierProvider.family<FoodListNotifier, List<Food>, FoodListType>(
        (ref, type) {
  final foods = [
    Food(
      id: 14,
      name: 'Bananna',
      calories: "calories",
      fat: "fat",
      sugar: "sugar",
      protein: "protein",
    ),
    Food(
      id: 14,
      name: 'Apple',
      calories: "calories",
      fat: "fat",
      sugar: "sugar",
      protein: "protein",
    )
  ];

  return FoodListNotifier(type, ref, foods);
});
