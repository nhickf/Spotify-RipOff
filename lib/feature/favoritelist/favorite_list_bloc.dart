import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/feature/favoritelist/favorite_list_event.dart';
import 'package:spotify/feature/favoritelist/favorite_list_state.dart';

class FavoriteListBloc extends Bloc<FavoriteListEvent,FavoriteListState> {
  FavoriteListBloc(super.initialState) {
    on<OnLayoutChange>((event, emit) {
      emit(state.copyWith(layout: event.layout));
    });
  }
}
