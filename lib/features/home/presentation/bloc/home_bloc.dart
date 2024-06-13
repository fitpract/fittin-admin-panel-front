import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<ExpandNavigationRailEvent>(_expandNavigationRailEvent);
    on<CollapseNavigationRailEvent>(_collapseNavigationRailEvent);
    on<ChangePageEvent>(_changePageEvent);
  }

  _expandNavigationRailEvent(ExpandNavigationRailEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(expanded: true));
  }

  _collapseNavigationRailEvent(CollapseNavigationRailEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(expanded: false));
  }

  _changePageEvent(ChangePageEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(selectedPage: event.pageIndex));
  }

}
