import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/core/network/response.dart';
import 'package:spotify/data/mapper/mapper.dart';
import 'package:spotify/data/model/category.dart';
import 'package:spotify/data/repository/data_repository.dart';
import 'package:spotify/feature/dashboard/dashboard_event.dart';
import 'package:spotify/feature/dashboard/dashboard_state.dart';
import 'package:spotify/data/source/api_service/response/error.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final IDataRepository _repository;

  DashboardBloc(this._repository) : super(DashboardState()) {
    on<Initial>((event, emit) async {
      final response = await _repository.getBrowseCategory(
        state.locale,
        state.limit,
        state.offset,
      );

      final albumResponse = await _repository.getAlbums(
        "PH",
        "2noRn2Aes5aoNVsU6iWThc,382ObEPsp2rxGrnsizN5TX,1tp5dooGLuiR2X9x96Pfhb,4kvSYmcz7B2v63wHA2HV8c,5G8rNVJCnq1ulzUmfLM2hT,7MCYCgE6fQHYkhj29FHRcY,2hVTFTbeg9QhXGZAY99oRa",
      );

      final artistResponse = await _repository.getArtists(
          "0TnOYISbd1XYRBk9myaseg,7bXgB6jMjp9ATFy66eO08Z,0rZRTXEmmPmx6gt92tBqIc,4tZwfgrHOc3mvqYlEYSvVi,49tQo2QULno7gxHutgccqF,1EHAbA1GMYOfkh9ds9eNfS,2UeuiDT17tm6ljs9D4bSMX,6ogIjp0fsbUxlqy9q2rvrT",
      );

      switch (artistResponse) {
        case Success():
          var data = artistResponse.data!.transform;
          emit(state.copyWith(isLoading: false, artists: data));
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
            error:
            Error(message: artistResponse.exception.toString(), status: 0),
          ));
          break;
      }

      switch (albumResponse) {
        case Success():
          var data = albumResponse.data!.transform;
          emit(state.copyWith(isLoading: false, albums: data));
          break;
        case Failure():
          emit(state.copyWith(
            isLoading: false,
            error: Error(
                message: albumResponse.message, status: albumResponse.code),
          ));
          break;
        case Exception():
          emit(state.copyWith(
            isLoading: false,
            error:
                Error(message: albumResponse.exception.toString(), status: 0),
          ));
          break;
      }

      switch (response) {
        case Success():
          var data = response.data!.transform;
          emit(state.copyWith(
              isLoading: false,
              offset: data.offset,
              limit: data.limit,
              categories: data.item as List<Category>));
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
    });

    on<Refresh>((event, emit) async {
      final response = await _repository.getBrowseCategory(
        state.locale,
        state.limit,
        state.offset,
      );

      switch (response) {
        case Success():
          var data = response.data!.transform;
          emit(state.copyWith(
              isLoading: false,
              offset: data.offset,
              limit: data.limit,
              categories: data.item as List<Category>));
          break;
        case Failure():
          emit(state.copyWith(
              isLoading: false,
              error: Error(message: response.message, status: response.code)));
          break;
        case Exception():
          emit(state.copyWith(
              isLoading: false,
              error: Error(message: response.exception.toString(), status: 0)));
          break;
      }
    });

    on<OnCategorySelected>((event, emit) async {
      final response = await _repository.getPlayLists(
          event.categoryId, state.limit, state.offset);

      switch (response) {
        case Success():
          emit(state.copyWith.call(isLoading: false, playList: response.data));
          break;
        case Failure():
          emit(state.copyWith.call(
              isLoading: false,
              error: Error(message: response.message, status: response.code)));
          break;
        case Exception():
          emit(state.copyWith.call(
            isLoading: false,
            error: Error(message: response.exception.toString(), status: 0),
          ));
          break;
      }
    });
  }
}
