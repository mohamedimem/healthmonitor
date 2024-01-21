import 'dart:ffi';
import 'dart:io';

import 'package:healthmonitor/src/models/food.dart';
import 'package:healthmonitor/src/services/base_service.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class FoodService extends BaseService {
  static const boxFood = "food";

  Future<dynamic> list() async {
    final foodBox = await getBox(boxFood);
    final items = await foodBox.getAllValues();
    List<Food> foods = [];
    for (var item in items.entries) {
      final Map<String, dynamic> data = {...item.value, 'id': item.key};
      foods.add(Food.fromJson(data));
    }
    return foods;
  }

  Future<bool> create(Food food) async {
    try {
      final foodBox = await getBox(boxFood);
      await foodBox.put(food.id.toString(), food.toJson());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List<Food>> delete(Food food) async {
    try {
      final foodBox = await getBox(boxFood);
      await foodBox.delete(food.id.toString());
      return await list();
    } catch (e) {
      print(e);
      return await list();
      ;
    }
  }
}
