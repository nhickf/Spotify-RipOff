import 'package:flutter/material.dart';
import 'package:spotify/data/model/album.dart';
import 'package:spotify/data/model/track.dart';
import 'package:spotify/feature/songlist/component/player_controller.dart';

class SongListScreen extends StatelessWidget {
  final Album album;

  const SongListScreen({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: 200,
        floating: false,
        automaticallyImplyLeading: true,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: false,
          expandedTitleScale: 1.3,

          title: Text(
            album.label!,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          background: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  album.image!,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff0c0c0c).withAlpha(150),
                    Color(0xff0c0c0c).withAlpha(100)
                  ],
                  stops: [0.3, 1],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
        ),
      ),
      SliverToBoxAdapter(
        child: PlayerController(),
      ),
      _SongListContainer(
        tracks: album.tracks?.item! as List<Track>,
      )
    ]));
  }
}

class _SongListContainer extends StatelessWidget {
  final List<Track> tracks;

  const _SongListContainer({required this.tracks});

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final item = tracks[index];
          return ListTile(
            title: Text("${item.name}"),
            subtitle: Text(item.artists!.first.name!),
            trailing: Icon(Icons.more_vert_outlined),
            leading: Image.network(
                "https://picsum.photos/500/500"),
          );
        },
        childCount: tracks.length,
      ),
    );
  }
}
