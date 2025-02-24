
import 'package:spotify/feature/favoritelist/favorite_list_screen.dart';

sealed class FavoriteListEvent {}

final class OnLayoutChange extends FavoriteListEvent {
  final Layout layout;

  OnLayoutChange({required this.layout});
}
