import 'package:spotify/feature/categorylist/category_list_screen.dart';

sealed class CategoryListEvent {}

final class OnLayoutChange extends CategoryListEvent {
  final Layout layout;

  OnLayoutChange({required this.layout});
}
