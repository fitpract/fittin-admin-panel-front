part of 'showcase_bloc.dart';


class ShowcaseState{
  final List<AppBanner> banners;
  final bool isLoading;

  ShowcaseState({
    this.banners = const [],
    this.isLoading = false,
  });

  ShowcaseState copyWith({
    List<AppBanner>? banners,
    bool isLoading = false,
  }) {
    return ShowcaseState(
      banners: banners ?? this.banners,
      isLoading: isLoading,
    );
  }
}