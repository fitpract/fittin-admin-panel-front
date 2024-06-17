import 'package:equatable/equatable.dart';

// Базовый класс для всех событий восстановления пароля
abstract class PasswordRecoveryEvent extends Equatable {
  const PasswordRecoveryEvent();

  @override
  List<Object> get props => [];
}

// Событие изменения email
class EmailChanged extends PasswordRecoveryEvent {
  final String email;

  const EmailChanged(this.email);

  @override
  List<Object> get props => [email];
}

// Событие отправки email для получения кода
class SendCodeSubmitted extends PasswordRecoveryEvent {
  const SendCodeSubmitted();
}

// Событие изменения кода
class CodeChanged extends PasswordRecoveryEvent {
  final String code;

  const CodeChanged(this.code);

  @override
  List<Object> get props => [code];
}

// Событие отправки кода для проверки
class VerifyCodeSubmitted extends PasswordRecoveryEvent {
  const VerifyCodeSubmitted();
}

// Событие изменения пароля
class PasswordChanged extends PasswordRecoveryEvent {
  final String password;

  const PasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

// Событие отправки нового пароля
class NewPasswordSubmitted extends PasswordRecoveryEvent {
  const NewPasswordSubmitted();
}
