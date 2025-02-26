import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/data/model/album.dart';
import 'package:spotify/data/model/artist.dart';
import 'package:spotify/data/model/category.dart';
import 'package:spotify/data/model/favorite.dart';
import 'package:spotify/feature/dashboard/component/albums.dart';
import 'package:spotify/feature/dashboard/component/artists.dart';
import 'package:spotify/feature/dashboard/component/categories.dart';
import 'package:spotify/feature/dashboard/component/favorites.dart';
import 'package:spotify/feature/dashboard/dashboard_bloc.dart';
import 'package:spotify/feature/dashboard/dashboard_state.dart';
import 'package:spotify/feature/dashboard/nav/dashboard_route.dart';

class DashboardScreen extends StatelessWidget {
  final Function(DashboardRoute route) onNavigateOutsideDashboard;

  const DashboardScreen({super.key, required this.onNavigateOutsideDashboard});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: _DashboardContainer(
        onNavigateToCategoryList: (categories) {
          onNavigateOutsideDashboard(CategoryList(categories: categories));
        },
        onNavigateAlbumToSongList: (album) {
          onNavigateOutsideDashboard(AlbumToSongList(album: album));
        },
        onNavigateArtistToSongList: (artist) {
          onNavigateOutsideDashboard(ArtistsToSongList(artist: artist));
        },
        onNavigateToFavoriteList: (favorites) {
          onNavigateOutsideDashboard(FavoriteList(favorites: favorites));
        },
      ),
    );
  }
}

class _DashboardContainer extends StatelessWidget {
  final Function(Album album) onNavigateAlbumToSongList;
  final Function(Artist artist) onNavigateArtistToSongList;
  final Function(List<Category> categories) onNavigateToCategoryList;
  final Function(List<Favorite> favorites) onNavigateToFavoriteList;

  const _DashboardContainer({
    required this.onNavigateAlbumToSongList,
    required this.onNavigateArtistToSongList,
    required this.onNavigateToCategoryList,
    required this.onNavigateToFavoriteList,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Image.asset(
                "assets/images/full_spotify.png",
                height: 48,
              ),
            ),
            body: _DashboardContent(
              isLoading: state.isLoading,
              error: state.error?.message,
              categories: state.categories,
              albums: state.albums,
              artists: state.artists,
              favorites: state.favorites,
              onNavigateArtistToSongList: onNavigateArtistToSongList,
              onNavigateToFavoriteList: onNavigateToFavoriteList,
              onNavigateToCategoryList: onNavigateToCategoryList,
              onNavigateAlbumToSongList: onNavigateAlbumToSongList,

            ));
      },
    );
  }
}

class _DashboardContent extends StatelessWidget {
  final bool isLoading;
  final String? error;
  final List<Category>? categories;
  final List<Album>? albums;
  final List<Artist>? artists;
  final List<Favorite>? favorites;
  final Function(Album album) onNavigateAlbumToSongList;
  final Function(Artist artist) onNavigateArtistToSongList;
  final Function(List<Category> categories) onNavigateToCategoryList;
  final Function(List<Favorite> favorites) onNavigateToFavoriteList;

  const _DashboardContent({
    required this.isLoading,
    required this.error,
    required this.categories,
    required this.artists,
    required this.albums,
    required this.favorites,
    required this.onNavigateAlbumToSongList,
    required this.onNavigateArtistToSongList,
    required this.onNavigateToCategoryList,
    required this.onNavigateToFavoriteList,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading && error == null) {
      return Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    } else if (!isLoading && error != null) {
      return Container(
        alignment: Alignment.center,
        child: Text(error!),
      );
    }
    else {
      return SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            Categories(
                onShowAllClick: (categories) {
                  onNavigateToCategoryList(categories);
                },
                items: categories),
            Albums(
              items: albums,
              onItemOnClick: onNavigateAlbumToSongList,
            ),
            Artists(
              items: artists,
              onItemOnClick: (artist) {
                if (artist.id != null) {
                  onNavigateArtistToSongList(artist);
                }
              },
            ),
            Favorites(
              list: favorites,
              onNavigateToFavoriteList: () {
                if (favorites != null && favorites?.isNotEmpty == true) {
                  onNavigateToFavoriteList(favorites!);
                }
              },
            )
          ],
        ),
      );
    }
  }
}
