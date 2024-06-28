import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required String username,
    required String password,
    required bool isSubmitting,
    required bool isSuccess,
    required bool isFailure,
    required bool showUsernameWarning,
    required bool showPasswordWarning,
    required bool rememberMe,
    String? errorMessage,
  }) = _AuthState;

  factory AuthState.initial({
    String username = '',
    String password = '',
    bool rememberMe = false,
  }) {
    return AuthState(
      username: username,
      password: password,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
      showUsernameWarning: false,
      showPasswordWarning: false,
      rememberMe: rememberMe,
      errorMessage: null,
    );
  }
}
