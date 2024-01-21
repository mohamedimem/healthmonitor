// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodImpl _$$FoodImplFromJson(Map<String, dynamic> json) => _$FoodImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      calories: json['calories'] as String,
      fat: json['fat'] as String,
      sugar: json['sugar'] as String,
      protein: json['protein'] as String,
    );

Map<String, dynamic> _$$FoodImplToJson(_$FoodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'calories': instance.calories,
      'fat': instance.fat,
      'sugar': instance.sugar,
      'protein': instance.protein,
    };
