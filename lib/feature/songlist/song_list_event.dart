import 'package:flutter/foundation.dart';
import 'package:spotify/core/network/response.dart';
import 'package:spotify/data/model/album.dart';
import 'package:spotify/data/model/artist.dart';
import 'package:spotify/data/model/favorite.dart';
import 'package:spotify/data/model/track.dart';

@immutable
sealed class SongListEvent {}


final class OnFetchAlbumTracks extends SongListEvent {
  final Album album;

  OnFetchAlbumTracks({required this.album});
}

final class OnFetchArtistTracks extends SongListEvent {
  final Artist artist;

  OnFetchArtistTracks({required this.artist});
}

final class OnObserverFavorites extends SongListEvent {
  final DataResponse<List<Favorite>> favorites;

  OnObserverFavorites({
    required this.favorites,
  });
}

final class OnFavoriteTrack extends SongListEvent {
  final Track track;

  OnFavoriteTrack({required this.track});
}

final class UnFavoriteTrack extends SongListEvent {
  final Track track;

  UnFavoriteTrack({required this.track});
}
