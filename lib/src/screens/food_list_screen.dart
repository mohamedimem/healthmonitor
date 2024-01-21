import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthmonitor/src/components/food_list.dart';
import 'package:healthmonitor/src/models/food.dart';
import 'package:healthmonitor/src/providers/food_list_providers.dart';
import 'package:healthmonitor/src/services/food_services.dart';

class FoodListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          const f = Food(
            id: '13',
            name: 'purple',
            calories: 100,
            fat: 1,
            sugar: 2,
            protein: 30,
          );
    
          await FoodService().create(f);
          ref.read(foodListProvider(FoodListType.all).notifier).add(f);
        },
        child: const Icon(Icons.add),
      ),
      body: Center(child: const FoodList(FoodListType.all)),
    );
  }
}
