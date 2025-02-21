import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/data/model/album.dart';
import 'package:spotify/data/model/category.dart';
import 'package:spotify/feature/dashboard/component/albums.dart';
import 'package:spotify/feature/dashboard/component/artists.dart';
import 'package:spotify/feature/dashboard/component/categories.dart';
import 'package:spotify/feature/dashboard/component/favorites.dart';
import 'package:spotify/feature/dashboard/dashboard_bloc.dart';
import 'package:spotify/feature/dashboard/dashboard_event.dart';
import 'package:spotify/feature/dashboard/dashboard_state.dart';

class DashboardScreen extends StatelessWidget {
  final Function(Album album) onNavigateToSongList;
  final Function(List<Category> categories) onNavigateToCategoryList;

  const DashboardScreen({
    super.key,
    required this.onNavigateToCategoryList,
    required this.onNavigateToSongList,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: _DashboardContainer(
        onNavigateToCategoryList: onNavigateToCategoryList,
        onNavigateToSongList: onNavigateToSongList,
      ),
    );
  }
}

class _DashboardContainer extends StatelessWidget {
  final Function(Album album) onNavigateToSongList;
  final Function(List<Category> categories) onNavigateToCategoryList;

  const _DashboardContainer({
    required this.onNavigateToSongList,
    required this.onNavigateToCategoryList,
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
                        onItemOnClick: onNavigateToSongList,
                      ),
                      Artists(
                        items: state.artists,
                        onItemOnClick: (artist) {
                          print('GestureDetector onItemOnClick!');
                        },
                      ),
                      Favorites()
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
