part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class ExpandNavigationRailEvent extends HomeEvent {}

class CollapseNavigationRailEvent extends HomeEvent {}


