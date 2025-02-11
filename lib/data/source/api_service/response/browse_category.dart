import 'package:freezed_annotation/freezed_annotation.dart';
import 'image.dart';

part 'browse_category.g.dart';
part 'browse_category.freezed.dart';

@freezed
class BrowseCategory with _$BrowseCategory {
  factory BrowseCategory({Categories? categories}) = _BrowseCategory;

  factory BrowseCategory.fromJson(Map<String, dynamic> json) =>
      _$BrowseCategoryFromJson(json);
}

@freezed
class Categories with _$Categories {
  factory Categories({
    String? href,
    int? limit,
    int? offset,
    String? next,
    String? previous,
    List<Category>? items,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    String? href,
    List<Image>? icons,
    String? id,
    String? name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
