
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryInitial()) {
    on<AddCarouselOfImagesEvent>(_addCarouselOfImagesEvent);
    on<RemoveCarouselEvent>(_removeCarouselEvent);
    on<ReworkCarouselEvent>(_reworkCarouselEvent);
  }


  _addCarouselOfImagesEvent(event, emit) {

  }

  _removeCarouselEvent(event, emit) {

  }

  _reworkCarouselEvent(event, emit) {

  }

}
