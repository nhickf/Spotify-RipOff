import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/data/model/favorite.dart';
import 'package:spotify/data/model/track.dart';
import 'package:spotify/feature/songlist/component/app_bar.dart';
import 'package:spotify/feature/songlist/component/player_controller.dart';
import 'package:spotify/feature/songlist/song_list_bloc.dart';
import 'package:spotify/feature/songlist/song_list_event.dart';
import 'package:spotify/feature/songlist/song_list_state.dart';

class SongListScreen extends StatelessWidget {
  const SongListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SongListBloc, SongListState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            );
          } else if (state.error != null) {
            return Container(
              alignment: Alignment.center,
              child: Text(state.error!),
            );
          } else if (state.tracks != null && state.tracks?.isNotEmpty == true) {
            return CustomScrollView(slivers: [
              SliverAppBar(
                expandedHeight: 200,
                floating: false,
                automaticallyImplyLeading: true,
                pinned: true,
                flexibleSpace: SongListAppBar(
                    title: state.title, coverImage: state.coverImage),
              ),
              SliverToBoxAdapter(
                child: PlayerController(
                  title: state.title,
                  description: state.description,
                ),
              ),

              SliverSafeArea(
                  top: false,
                  sliver: _SongListContainer(
                tracks: state.tracks as List<Track>,
                favorites: state.favorites,
              ))


            ]);
          } else {
            return Container(
              alignment: Alignment.center,
              child: Text("Track not found"),
            );
          }
        },
      ),
    );
  }
}

class _SongListContainer extends StatelessWidget {
  final List<Track> tracks;
  final List<Favorite>? favorites;

  const _SongListContainer({required this.tracks, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final item = tracks[index];
          final isFavorite = favorites?.map((fav) {
            return fav.id;
          }).contains(item.id);

          return _SongItem(
            item: item,
            isFavorite: isFavorite,
          );
        },
        childCount: tracks.length,
      ),
    );
  }
}

class _SongItem extends StatelessWidget {
  final Track item;
  final bool? isFavorite;

  const _SongItem({required this.item, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "${item.name}",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        item.artists!.map((artist) {
          return artist.name!;
        }).join("-"),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        onPressed: () {
          if (isFavorite == true) {
            context.read<SongListBloc>().add(UnFavoriteTrack(track: item));
          } else {
            context.read<SongListBloc>().add(OnFavoriteTrack(track: item));
          }
        },
        icon: _FavoriteIcon(
          isFavorite: isFavorite,
        ),
      ),
      leading: Image.network(item.album!.image!),
    );
  }
}

class _FavoriteIcon extends StatelessWidget {
  final bool? isFavorite;

  const _FavoriteIcon({required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    if (isFavorite == true) {
      return Icon(Icons.favorite);
    } else {
      return Icon(Icons.favorite_outline);
    }
  }
}
