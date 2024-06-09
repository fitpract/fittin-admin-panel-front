import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final String username;
  final String password;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;
  final bool showUsernameWarning;
  final bool showPasswordWarning;
  final bool rememberMe;

  const AuthState({
    required this.username,
    required this.password,
    required this.isSubmitting,
    required this.isSuccess,
    required this.isFailure,
    required this.showUsernameWarning,
    required this.showPasswordWarning,
    required this.rememberMe,
  });

  factory AuthState.initial() {
    return AuthState(
      username: '',
      password: '',
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
      showUsernameWarning: false,
      showPasswordWarning: false,
      rememberMe: false,
    );
  }

  AuthState copyWith({
    String? username,
    String? password,
    bool? isSubmitting,
    bool? isSuccess,
    bool? isFailure,
    bool? showUsernameWarning,
    bool? showPasswordWarning,
    bool? rememberMe,
  }) {
    return AuthState(
      username: username ?? this.username,
      password: password ?? this.password,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
      showUsernameWarning: showUsernameWarning ?? this.showUsernameWarning,
      showPasswordWarning: showPasswordWarning ?? this.showPasswordWarning,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }

  @override
  List<Object> get props => [
    username,
    password,
    isSubmitting,
    isSuccess,
    isFailure,
    showUsernameWarning,
    showPasswordWarning,
    rememberMe,
  ];
}
