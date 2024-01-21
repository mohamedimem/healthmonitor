import 'package:flutter/material.dart';
import 'package:healthmonitor/src/components/food_list.dart';
import 'package:healthmonitor/src/providers/food_list_providers.dart';

class FoodListScreen extends StatefulWidget {
  const FoodListScreen({super.key});

  @override
  State<FoodListScreen> createState() => _FoodListScreenState();
}

class _FoodListScreenState extends State<FoodListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: const FoodList(FoodListType.all)),
    );
  }
}
