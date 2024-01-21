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
  final  foods = [
    const Food(
      id: 14,
      name: 'Bananna',
      calories: 100,
      fat: 1,
      sugar: 2,
      protein: 30,
    ),
    const Food(
      id: 14,
      name: 'Apple',
      calories: 100,
      fat: 3,
      sugar: 2,
      protein: 30,
    )
  ];

  return FoodListNotifier(type, ref, foods);
});
