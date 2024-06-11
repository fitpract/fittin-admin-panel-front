part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class AddNewElementEvent extends HomeEvent{}

class DeleteElementEvent extends HomeEvent{}

