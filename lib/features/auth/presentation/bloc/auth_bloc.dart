import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/data/service/secure_storage.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import '../../domain/login_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginRepository loginRepository = LoginRepository();
  final SecureStorageService storage = SecureStorageService();

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
        // Вызываем метод для входа, который может выбросить исключение DioException
        await _performLogin(state.username, state.password);
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      } catch (error) {
        if (error is DioException && error.response?.statusCode == 401) {
          emit(state.copyWith(isSubmitting: false, isFailure: true));
        }
      }
    }
  }

  Future<void> _performLogin(String username, String password) async {
    // Здесь вызывается метод loginRepository.login для выполнения запроса на сервер
    await loginRepository.login(username, password);
  }

  void _onToggleRememberMe(ToggleRememberMe event, Emitter<AuthState> emit) {
    emit(state.copyWith(rememberMe: !state.rememberMe));
  }
}
