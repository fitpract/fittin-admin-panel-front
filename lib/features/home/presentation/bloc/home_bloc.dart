
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<ExpandNavigationRailEvent>(_expandNavigationRailEvent);
    on<CollapseNavigationRailEvent>(_collapseNavigationRailEvent);
  }

  _expandNavigationRailEvent(ExpandNavigationRailEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(expanded: true));
  }

  _collapseNavigationRailEvent(event, emit) {
    emit(state.copyWith(expanded: false));
  }

}
