import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/feature/categorylist/category_list_bloc.dart';
import 'package:spotify/feature/categorylist/category_list_screen.dart';
import 'package:spotify/feature/dashboard/dashboard_screen.dart';
import 'package:spotify/feature/songlist/song_list_screen.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: DashboardScreen(onNavigateToCategoryList: (list) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: context.read<CategoryListBloc>(),
                child: CategoryListScreen(
                  categoryList: list,
                ),
              ),
            ));
      }, onNavigateToSongList: (album) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SongListScreen(album: album),
            ));
      }),
    );
  }
}
