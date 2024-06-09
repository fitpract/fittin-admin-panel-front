import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthUsernameChanged extends AuthEvent {
  final String username;

  const AuthUsernameChanged(this.username);

  @override
  List<Object> get props => [username];
}

class AuthPasswordChanged extends AuthEvent {
  final String password;

  const AuthPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

class AuthSubmitted extends AuthEvent {
  const AuthSubmitted();
}

class ShowAuthWarning extends AuthEvent {
  const ShowAuthWarning();
}

class ToggleRememberMe extends AuthEvent {

}
