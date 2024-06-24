part of 'showcase_bloc.dart';

@immutable
abstract class ShowcaseEvent {}

class GetBannersEvent extends ShowcaseEvent{}

class DeleteElementEvent extends ShowcaseEvent{}