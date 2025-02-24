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
import 'package:spotify/feature/dashboard/dashboard_event.dart';
import 'package:spotify/feature/dashboard/dashboard_state.dart';
import 'package:spotify/feature/dashboard/nav/dashboard_route.dart';

class DashboardScreen extends StatelessWidget {
  final Function(DashboardRoute route) onNavigateOutsideDashboard;

  const DashboardScreen({super.key, required this.onNavigateOutsideDashboard});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        if (state.categories == null) {
          return CircularProgressIndicator();
        } else {
          if (state.categories?.isNotEmpty == true) {
            return Scaffold(
                appBar: AppBar(
                  title: Image.asset(
                    "assets/images/full_spotify.png",
                    height: 48,
                  ),
                ),
                body: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    spacing: 16,
                    children: [
                      Categories(
                          onItemOnClick: (categoryId) {
                            context.read<DashboardBloc>().add(
                                OnCategorySelected(categoryId: categoryId));
                          },
                          onShowAllClick: () {
                            onNavigateToCategoryList(state.categories!);
                          },
                          items: state.categories!),
                      Albums(
                        items: state.albums,
                        onItemOnClick: onNavigateAlbumToSongList,
                      ),
                      Artists(
                        items: state.artists,
                        onItemOnClick: (artist) {
                          if (artist.id != null) {
                            onNavigateArtistToSongList(artist);
                          }
                        },
                      ),
                      Favorites(
                        list: state.favorites,
                        onNavigateToFavoriteList: () {
                          if (state.favorites != null &&
                              state.favorites!.isNotEmpty) {
                            onNavigateToFavoriteList(state.favorites!);
                          }
                        },
                      )
                    ],
                  ),
                ));
          }
          return Text("No data available");
        }
      },
    );
  }
}
