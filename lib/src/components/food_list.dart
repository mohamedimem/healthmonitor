import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthmonitor/src/providers/food_list_providers.dart';

class FoodList extends ConsumerWidget {
  const FoodList(this.type, {super.key});
  final FoodListType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foods = ref.watch(foodListProvider(type));

    return ListView.builder(
      itemCount: foods.length,
      itemBuilder: (context, index) {
        final food = foods[index];
        return Text(food.name);
      },
    );
  }
}
