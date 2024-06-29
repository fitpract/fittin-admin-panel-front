
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<SetLightThemeEvent>(_setLightThemeEvent);
    on<SetDarkThemeEvent>(_setDarkThemeEvent);
  }

  _setLightThemeEvent(SetLightThemeEvent event, Emitter<ThemeState> emit) {
    emit(state.copyWith(themeMode: ThemeMode.light));
  }

  _setDarkThemeEvent(SetDarkThemeEvent event, Emitter<ThemeState> emit) {
    emit(state.copyWith(themeMode: ThemeMode.dark));
  }

}
