import 'package:spotify/data/model/album.dart';
import 'package:spotify/data/model/artist.dart';
import 'package:spotify/data/model/category.dart';
import 'package:spotify/data/model/favorite.dart';

sealed class DashboardRoute {}

final class AlbumToSongList extends DashboardRoute {
  final Album album;

  AlbumToSongList({required this.album});
}

final class ArtistsToSongList extends DashboardRoute {
  final Artist artist;

  ArtistsToSongList({required this.artist});
}

final class CategoryList extends DashboardRoute {
  final List<Category> categories;

  CategoryList({required this.categories});
}

final class FavoriteList extends DashboardRoute {
  final List<Favorite> favorites;

  FavoriteList({required this.favorites});
}
