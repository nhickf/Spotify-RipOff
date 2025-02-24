import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/feature/favoritelist/favorite_list_screen.dart';
part 'favorite_list_state.freezed.dart';


@freezed
class FavoriteListState with _$FavoriteListState {
  factory FavoriteListState({@Default(Layout.list) Layout layout}) =
      _FavoriteListState;
}
