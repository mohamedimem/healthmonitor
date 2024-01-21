// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryImpl _$$EntryImplFromJson(Map<String, dynamic> json) => _$EntryImpl(
      id: json['id'] as int,
      food: Food.fromJson(json['food'] as Map<String, dynamic>),
      entryAt: DateTime.parse(json['entryAt'] as String),
    );

Map<String, dynamic> _$$EntryImplToJson(_$EntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food': instance.food,
      'entryAt': instance.entryAt.toIso8601String(),
    };
