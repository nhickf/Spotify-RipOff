
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/core/network/response.dart';
import 'package:spotify/data/mapper/mapper.dart';
import 'package:spotify/data/model/track.dart';
import 'package:spotify/data/repository/data_repository.dart';
import 'package:spotify/feature/songlist/song_list_event.dart';
import 'package:spotify/feature/songlist/song_list_state.dart';

class SongListBloc extends Bloc<SongListEvent, SongListState> {
  final IDataRepository _repository;

  SongListBloc(this._repository) : super(SongListState(favorites: [])) {
    on<OnFavoriteTrack>((event, emit) {
      _repository.addFavorite(event.track.transform);
    });

    on<UnFavoriteTrack>((event, emit) {
      _repository.deleteFavorite(event.track.transform);
    });

    on<OnObserverFavorites>((event, emit) async {
      final favoritesResponse = event.favorites;
      switch (favoritesResponse) {
        case Success():
          emit(state.copyWith(
              favorites: favoritesResponse.data, isLoading: false));
          break;
        case Failure():
          emit(state.copyWith(
              error: favoritesResponse.message, isLoading: false));
          break;
        case Exception():
          emit(state.copyWith(
              error: favoritesResponse.exception.toString(), isLoading: false));
          break;
      }
    });

    on<OnFetchAlbumTracks>((event, emit) async {
      emit(state.copyWith(isLoading: true , favorites: state.favorites));
      final ids = (event.album.tracks?.item as List<Track>).map((track) {
        return track.id;
      }).join(",");

      final response = await _repository.getTracks(ids);

      switch (response) {
        case Success():
          emit(state.copyWith(
              title: event.album.label!,
              description: event.album.id!,
              coverImage: event.album.image!,
              tracks: response.data,
              isLoading: false,
            error: null
          ));
          break;
        case Failure():
          emit(state.copyWith(error: response.message, isLoading: false));
          break;
        case Exception():
          emit(state.copyWith(
              error: response.exception.toString(), isLoading: false));
          break;
      }
    });


    on<OnFetchArtistTracks>((event, emit) async {
      emit(state.copyWith(isLoading: true, favorites: state.favorites));

      final response = await _repository.getArtistTracks(event.artist.id!);

      switch (response) {
        case Success():
          emit(state.copyWith(
              title: event.artist.name!,
              description: event.artist.id!,
              coverImage: event.artist.image!,
              tracks: response.data, isLoading: false));
          break;
        case Failure():
          emit(state.copyWith(error: response.message, isLoading: false));
          break;
        case Exception():
          emit(state.copyWith(
              error: response.exception.toString(), isLoading: false));
          break;
      }
    });

    _repository.getFavorites().listen((favoritesResponse) =>
        add(OnObserverFavorites(favorites: favoritesResponse)));
  }
}
