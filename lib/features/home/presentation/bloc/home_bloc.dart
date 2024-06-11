
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<AddNewElementEvent>(_addNewElementEvent);
    on<DeleteElementEvent>(_deleteElementEvent);
  }

  _addNewElementEvent(event, emit) {

  }

  _deleteElementEvent(event, emit) {

  }
}
