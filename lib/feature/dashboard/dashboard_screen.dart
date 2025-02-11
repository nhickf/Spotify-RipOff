import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/data/repository/data_repository.dart';
import 'package:spotify/feature/dashboard/component/albums.dart';
import 'package:spotify/feature/dashboard/component/artists.dart';
import 'package:spotify/feature/dashboard/component/categories.dart';
import 'package:spotify/feature/dashboard/component/playlists.dart';
import 'package:spotify/feature/dashboard/dashboard_bloc.dart';
import 'package:spotify/feature/dashboard/dashboard_event.dart';
import 'package:spotify/feature/dashboard/dashboard_state.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiBlocProvider(
      providers: [
        BlocProvider<DashboardBloc>(
          create: (context) =>
              DashboardBloc(context.read<IDataRepository>())..add(Initial()),
        )
      ],
      child: DashboardContainer(),
    );
  }
}

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        // TODO: implement build

        if (state.categories == null) {
          return Text("No data available");
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
                  CategoryPlayLists(
                      onItemOnClick: () {
                        print('GestureDetector onItemOnClick!');
                      },
                      onShowAllClick: () {
                        print('GestureDetector onShowAllClick!');
                      },
                      playLists: state.playList),
                  Albums(
                      items: state.albums,
                      onItemOnClick: (album) {
                        print('GestureDetector onItemOnClick!');
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
