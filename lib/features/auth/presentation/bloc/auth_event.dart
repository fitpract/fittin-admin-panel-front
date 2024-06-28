import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authUsernameChanged(String username) = AuthUsernameChanged;
  const factory AuthEvent.authPasswordChanged(String password) = AuthPasswordChanged;
  const factory AuthEvent.authSubmitted() = AuthSubmitted;
  const factory AuthEvent.showAuthWarning() = ShowAuthWarning;
  const factory AuthEvent.toggleRememberMe() = ToggleRememberMe;
}