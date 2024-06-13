
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'showcase_event.dart';
part 'showcase_state.dart';

class ShowcaseBloc extends Bloc<ShowcaseEvent, ShowcaseState> {
  ShowcaseBloc() : super(ShowcaseInitial()) {
    on<AddNewElementEvent>(_addNewElementEvent);
    on<DeleteElementEvent>(_deleteElementEvent);
  }

  _addNewElementEvent(event, emit) {

  }

  _deleteElementEvent(event, emit) {

  }
}
