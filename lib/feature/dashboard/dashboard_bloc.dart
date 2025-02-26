import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/core/network/response.dart';
import 'package:spotify/data/repository/data_repository.dart';
import 'package:spotify/feature/dashboard/dashboard_event.dart';
import 'package:spotify/feature/dashboard/dashboard_state.dart';
import 'package:spotify/data/source/api_service/response/error.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final IDataRepository _repository;

  DashboardBloc(this._repository) : super(DashboardState()) {
    on<Initial>(_onFetchInitialData);

    on<Refresh>(_onFetchInitialData);

    on<OnFavoritesChanges>(_onFavoritesChanges);
  }

  void _onFavoritesChanges(
      OnFavoritesChanges event, Emitter<DashboardState> emit) async {
    final favoritesResponse = event.favoriteResponse;
    switch (favoritesResponse) {
      case Success():
        emit(state.copyWith(
            isLoading: false, favorites: favoritesResponse.data, error: null));
        break;
      case Failure():
        emit(state.copyWith(
          isLoading: false,
          error: Error(
              message: favoritesResponse.message,
              status: favoritesResponse.code),
        ));
        break;
      case Exception():
        emit(state.copyWith(
          isLoading: false,
          error:
              Error(message: favoritesResponse.exception.toString(), status: 0),
        ));
        break;
    }
  }

  void _onFetchInitialData(
      DashboardEvent event, Emitter<DashboardState> emit) async {
    emit(state.copyWith(isLoading: true));
    final response = await _repository.getBrowseCategory(
      state.locale,
      30,
      0,
    );

    final albumResponse = await _repository.getAlbums(
      "PH",
      "2noRn2Aes5aoNVsU6iWThc,382ObEPsp2rxGrnsizN5TX,1tp5dooGLuiR2X9x96Pfhb,4kvSYmcz7B2v63wHA2HV8c,5G8rNVJCnq1ulzUmfLM2hT,7MCYCgE6fQHYkhj29FHRcY,2hVTFTbeg9QhXGZAY99oRa",
    );

    final artistResponse = await _repository.getArtists(
      "0TnOYISbd1XYRBk9myaseg,7bXgB6jMjp9ATFy66eO08Z,0rZRTXEmmPmx6gt92tBqIc,4tZwfgrHOc3mvqYlEYSvVi,49tQo2QULno7gxHutgccqF,1EHAbA1GMYOfkh9ds9eNfS,2UeuiDT17tm6ljs9D4bSMX,6ogIjp0fsbUxlqy9q2rvrT",
    );

    _repository.getFavorites().listen((favoritesResponse) =>
        add(OnFavoritesChanges(favoriteResponse: favoritesResponse)));

    switch (artistResponse) {
      case Success():
        var data = artistResponse.data!;
        emit(state.copyWith(artists: data, error: null));
        break;
      case Failure():
        emit(state.copyWith(
          isLoading: false,
          error: Error(
              message: artistResponse.message, status: artistResponse.code),
        ));
        break;
      case Exception():
        emit(state.copyWith(
          isLoading: false,
          error: Error(message: artistResponse.exception.toString(), status: 0),
        ));
        break;
    }

    switch (albumResponse) {
      case Success():
        var data = albumResponse.data!;
        emit(state.copyWith( albums: data, error: null));
        break;
      case Failure():
        emit(state.copyWith(
          isLoading: false,
          error:
              Error(message: albumResponse.message, status: albumResponse.code),
        ));
        break;
      case Exception():
        emit(state.copyWith(
          isLoading: false,
          error: Error(message: albumResponse.exception.toString(), status: 0),
        ));
        break;
    }

    switch (response) {
      case Success():
        var data = response.data!;
        emit(state.copyWith(isLoading: false, categories: data, error: null));
        break;
      case Failure():
        emit(state.copyWith(
          isLoading: false,
          error: Error(message: response.message, status: response.code),
        ));
        break;
      case Exception():
        emit(state.copyWith(
          isLoading: false,
          error: Error(message: response.exception.toString(), status: 0),
        ));
        break;
    }
  }
}
