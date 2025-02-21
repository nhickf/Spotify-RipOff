import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/feature/categorylist/category_list_screen.dart';
part 'category_list_state.freezed.dart';

@freezed
class CategoryListState with _$CategoryListState {
  factory CategoryListState({@Default(Layout.list) Layout layout}) =
      _CategoryListState;
}
