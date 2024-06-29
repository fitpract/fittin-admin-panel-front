part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class SetLightThemeEvent extends ThemeEvent {}

class SetDarkThemeEvent extends ThemeEvent {}