
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';

@freezed
class Category with _$Category {
  factory Category({
    String? icons,
    String? id,
    String? name,
  }) = _Category;
}