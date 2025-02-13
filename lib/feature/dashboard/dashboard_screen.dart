import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/data/model/album.dart';
import 'package:spotify/feature/dashboard/component/albums.dart';
import 'package:spotify/feature/dashboard/component/artists.dart';
import 'package:spotify/feature/dashboard/component/categories.dart';
import 'package:spotify/feature/dashboard/dashboard_bloc.dart';
import 'package:spotify/feature/dashboard/dashboard_event.dart';
import 'package:spotify/feature/dashboard/dashboard_state.dart';

class DashboardScreen extends StatelessWidget {
  final Function(Album album) onNavigate;

  const DashboardScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider<DashboardBloc>(
      create: (context) => context.read<DashboardBloc>()..add(Initial()),
      child: Container(
        alignment: Alignment.center,
        child: _DashboardContainer(
          onNavigateToSongList: (album) {
            onNavigate(album);
          },
        ),
      ),
    );
  }
}

class _DashboardContainer extends StatelessWidget {
  final Function(Album album) onNavigateToSongList;

  const _DashboardContainer({required this.onNavigateToSongList});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        if (state.categories == null) {
          return CircularProgressIndicator();
        } else {
          if (state.categories?.isNotEmpty == true) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Categories(
                      onItemOnClick: (categoryId) {
                        context
                            .read<DashboardBloc>()
                            .add(OnCategorySelected(categoryId: categoryId));
                      },
                      onShowAllClick: () {
                        print('GestureDetector onShowAllClick!');
                      },
                      items: state.categories!),
                  Albums(
                      items: state.albums,
                      onItemOnClick: (album) {
                        print('GestureDetector onItemOnClick!');
                        onNavigateToSongList(album);
                      }),
                  Artists(
                      items: state.artists,
                      onItemOnClick: (artist) {
                        print('GestureDetector onItemOnClick!');
                      }),
                ],
              ),
            );
          }
          return Text("No data available");
        }
      },
    );
  }
}
