import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
class Food with _$Food {
  const Food._();
  const factory Food({
    required int id,
    required String name,
    required int calories,
    required int fat,
    required int sugar,
    required int protein,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
