abstract class PasswordRecoveryEvent {}

class EmailChanged extends PasswordRecoveryEvent {
  final String email;

  EmailChanged(this.email);
}

class SendCodeSubmitted extends PasswordRecoveryEvent {}

class CodeChanged extends PasswordRecoveryEvent {
  final String code;

  CodeChanged(this.code);
}

class VerifyCodeSubmitted extends PasswordRecoveryEvent {}

class PasswordChanged extends PasswordRecoveryEvent {
  final String password;

  PasswordChanged(this.password);
}

class NewPasswordSubmitted extends PasswordRecoveryEvent {}
