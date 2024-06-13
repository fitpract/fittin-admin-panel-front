part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class ExpandNavigationRailEvent extends HomeEvent {}

class CollapseNavigationRailEvent extends HomeEvent {}

class ChangePageEvent extends HomeEvent {

  final int pageIndex;

  ChangePageEvent({required this.pageIndex});

}


