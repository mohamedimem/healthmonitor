import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthmonitor/src/models/food.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key, required this.food});
  final Food food;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.stars),
      title: Text(food.name),
      subtitle: Text(food.caption),
    );
  }
}
