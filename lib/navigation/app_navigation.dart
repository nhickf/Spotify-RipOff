import 'package:flutter/material.dart';
import 'package:spotify/feature/dashboard/dashboard_screen.dart';
import 'package:spotify/feature/songlist/song_list_screen.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: DashboardScreen(onNavigate: (album) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Scaffold(
                body: SongListScreen(album: album),
              ),
            ));
      }),
    );
  }
}
