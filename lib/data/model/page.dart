import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';

@freezed
class Page<T> with _$Page {
  factory Page({
    required List<T>? item,
    required int offset,
    required int limit,
  }) = _Page;
}
