import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/feature/categorylist/category_list_bloc.dart';
import 'package:spotify/feature/categorylist/category_list_screen.dart';
import 'package:spotify/feature/dashboard/dashboard_screen.dart';
import 'package:spotify/feature/dashboard/nav/dashboard_route.dart';
import 'package:spotify/feature/favoritelist/favorite_list_bloc.dart';
import 'package:spotify/feature/favoritelist/favorite_list_screen.dart';
import 'package:spotify/feature/songlist/song_list_bloc.dart';
import 'package:spotify/feature/songlist/song_list_event.dart';
import 'package:spotify/feature/songlist/song_list_screen.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: DashboardScreen(
        onNavigateOutsideDashboard: (route) {
          switch (route) {
            case AlbumToSongList():
              if (route.album.tracks != null) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BlocProvider.value(
                        value: context.read<SongListBloc>()
                          ..add(OnFetchAlbumTracks(album: route.album)),
                        child: SongListScreen(),
                      ),
                    ));
              }
              break;
            case ArtistsToSongList():
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider.value(
                      value: context.read<SongListBloc>()
                        ..add(OnFetchArtistTracks(artist: route.artist)),
                      child: SongListScreen(),
                    ),
                  ));
            case CategoryList():
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider.value(
                      value: context.read<CategoryListBloc>(),
                      child: CategoryListScreen(
                        categoryList: route.categories,
                      ),
                    ),
                  ));
              break;
            case FavoriteList():
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider.value(
                      value: context.read<FavoriteListBloc>(),
                      child: FavoriteListScreen(
                        favoriteList: route.favorites,
                      ),
                    ),
                  ));
              break;
          }
        },
      ),
    );
  }
}
