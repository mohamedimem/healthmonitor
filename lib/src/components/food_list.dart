import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthmonitor/src/components/food_tile.dart';
import 'package:healthmonitor/src/models/food.dart';
import 'package:healthmonitor/src/providers/food_list_providers.dart';
import 'package:healthmonitor/src/services/food_services.dart';

class FoodList extends ConsumerWidget {
  const FoodList(this.type, {super.key});
  final FoodListType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foods = ref.watch(foodListProvider(type));
    return ListView.builder(
      itemCount: foods.length,
      itemBuilder: (context, index) {
        final newfood = foods[index];
        return Dismissible(
            onDismissed: (_) async {
              ref
                  .read(foodListProvider(FoodListType.all).notifier)
                  .removeAt(newfood);
            },
            key: Key(newfood.id),
            child: FoodTile(
              food: newfood,
            ));
      },
    );
  }
}
