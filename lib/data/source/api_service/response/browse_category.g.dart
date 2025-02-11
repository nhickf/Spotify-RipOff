// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrowseCategoryImpl _$$BrowseCategoryImplFromJson(Map<String, dynamic> json) =>
    _$BrowseCategoryImpl(
      categories: json['categories'] == null
          ? null
          : Categories.fromJson(json['categories'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrowseCategoryImplToJson(
        _$BrowseCategoryImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'offset': instance.offset,
      'next': instance.next,
      'previous': instance.previous,
      'items': instance.items,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      href: json['href'] as String?,
      icons: (json['icons'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'icons': instance.icons,
      'id': instance.id,
      'name': instance.name,
    };
