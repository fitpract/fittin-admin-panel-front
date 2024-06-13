part of 'showcase_bloc.dart';

@immutable
abstract class ShowcaseEvent {}

class AddNewElementEvent extends ShowcaseEvent{}

class DeleteElementEvent extends ShowcaseEvent{}