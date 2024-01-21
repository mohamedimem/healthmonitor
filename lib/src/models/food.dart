import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class Food with _$Food {
  const Food._();
  const factory Food({
    required int id,
    required String name,
    required String calories,
    required String fat,
    required String sugar,
    required String protein,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  
}
