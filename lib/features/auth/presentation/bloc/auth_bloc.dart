import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthUsernameChanged>(_onUsernameChanged);
    on<AuthPasswordChanged>(_onPasswordChanged);
    on<AuthSubmitted>(_onSubmitted);
    on<ToggleRememberMe>(_onToggleRememberMe);
  }

  void _onUsernameChanged(AuthUsernameChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      username: event.username,
      showUsernameWarning: event.username.isEmpty,
    ));
  }

  void _onPasswordChanged(AuthPasswordChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      password: event.password,
      showPasswordWarning: event.password.isEmpty,
    ));
  }

  void _onSubmitted(AuthSubmitted event, Emitter<AuthState> emit) async {
    final usernameWarning = state.username.isEmpty;
    final passwordWarning = state.password.isEmpty;

    if (usernameWarning || passwordWarning) {
      emit(state.copyWith(
        showUsernameWarning: usernameWarning,
        showPasswordWarning: passwordWarning,
      ));
    } else {
      emit(state.copyWith(isSubmitting: true, isFailure: false));
      try {
        await Future.delayed(const Duration(seconds: 2));
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      } catch (_) {
        emit(state.copyWith(isSubmitting: false, isFailure: true));
      }
    }
  }

  void _onToggleRememberMe(ToggleRememberMe event, Emitter<AuthState> emit) {
    emit(state.copyWith(rememberMe: !state.rememberMe));
  }
}
