import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify/data/model/album.dart';
import 'package:spotify/data/model/artist.dart';
import 'package:spotify/data/model/category.dart';
import 'package:spotify/data/model/favorite.dart';
import 'package:spotify/data/source/api_service/response/error.dart';
import 'package:spotify/data/source/api_service/response/playlists.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    @Default(false) bool isLoading,
    @Default('sv_SE') String locale,
    @Default(30) int limit,
    @Default(0) int offset,
    List<Category>? categories,
    PlayLists? playList,
    List<Album>? albums,
    List<Artist>? artists,
    List<Favorite>? favorites,
    Error? error,
  }) = _DashboardState;
}
