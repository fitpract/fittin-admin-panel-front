part of 'history_bloc.dart';

@immutable
abstract class HistoryEvent {}

class AddCarouselOfImagesEvent extends HistoryEvent {}

class RemoveCarouselEvent extends HistoryEvent {}

class ReworkCarouselEvent extends HistoryEvent {}
