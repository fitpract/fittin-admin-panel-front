part of 'home_bloc.dart';

/*@immutable
abstract class HomeState {}*/
/*

class HomeInitial extends HomeState {}

class HomeExpandedState extends HomeState {

  final bool isExpanded;

  HomeExpandedState({required this.isExpanded});

}*/

class HomeState extends Equatable {
  final bool expanded;

  const HomeState({
    required this.expanded,
  });

  factory HomeState.initial() {
    return const HomeState(expanded: true);
  }

  HomeState copyWith({
    bool? expanded,
  }) {
    return HomeState(expanded: expanded ?? this.expanded);
  }

  @override
  List<Object> get props => [expanded];
}
