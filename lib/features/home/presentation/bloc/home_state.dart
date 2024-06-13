part of 'home_bloc.dart';

class HomeState extends Equatable {
  final bool expanded;
  final int selectedPage;

  const HomeState({
    required this.expanded,
    required this.selectedPage,
  });

  factory HomeState.initial() {
    return const HomeState(expanded: true, selectedPage: 0);
  }

  HomeState copyWith({
    bool? expanded,
    int? selectedPage,
  }) {
    return HomeState(
      expanded: expanded ?? this.expanded,
      selectedPage: selectedPage ?? this.selectedPage,
    );
  }

  @override
  List<Object> get props => [expanded, selectedPage];
}
