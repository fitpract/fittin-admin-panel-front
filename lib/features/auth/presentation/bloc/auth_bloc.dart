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
    _loadRememberedData();
  }

  void _onUsernameChanged(AuthUsernameChanged event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      username: event.username,
      showUsernameWarning: event.username.isEmpty,
    ));
    if (state.rememberMe) {
      await storage.write(key: 'username', value: event.username);
    }
  }

  void _onPasswordChanged(AuthPasswordChanged event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      password: event.password,
      showPasswordWarning: event.password.isEmpty,
    ));
    if (state.rememberMe) {
      await storage.write(key: 'password', value: event.password);
    }
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
    await loginRepository.login(username, password);
  }

  void _onToggleRememberMe(ToggleRememberMe event, Emitter<AuthState> emit) async {
    final newRememberMe = !state.rememberMe;
    emit(state.copyWith(rememberMe: newRememberMe));

    if (newRememberMe) {
      await storage.write(key: 'username', value: state.username);
      await storage.write(key: 'password', value: state.password);
    } else {
      await storage.delete(key: 'username');
      await storage.delete(key: 'password');
    }
    await storage.write(key: 'rememberMe', value: newRememberMe.toString());
  }

  Future<void> _loadRememberedData() async {
    final rememberMe = await storage.read(key: 'rememberMe');
    if (rememberMe == 'true') {
      final username = await storage.read(key: 'username') ?? '';
      final password = await storage.read(key: 'password') ?? '';
      emit(AuthState.initial(username: username, password: password, rememberMe: true));
    }
  }
}
