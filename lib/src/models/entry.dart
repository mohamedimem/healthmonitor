import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthmonitor/src/models/food.dart';

part 'entry.freezed.dart';
part 'entry.g.dart';

@freezed
class Entry with _$Entry {
  const Entry._();
  const factory Entry({
    required int id,
    required Food food,
    required DateTime entryAt,
  }) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}
