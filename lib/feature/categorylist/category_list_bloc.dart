import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/feature/categorylist/category_list_event.dart';
import 'package:spotify/feature/categorylist/category_list_state.dart';

class CategoryListBloc extends Bloc<CategoryListEvent,CategoryListState> {
  CategoryListBloc(super.initialState) {
    on<OnLayoutChange>((event, emit) {
      emit(state.copyWith(layout: event.layout));
    });
  }
}
