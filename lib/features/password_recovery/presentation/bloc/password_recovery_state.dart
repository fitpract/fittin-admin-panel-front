abstract class PasswordRecoveryState {}

class PasswordRecoveryInitial extends PasswordRecoveryState {}

class EmailInputState extends PasswordRecoveryState {
  final String email;
  final bool showEmailWarning;
  final bool isSubmitting;

  EmailInputState({
    this.email = '',
    this.showEmailWarning = false,
    this.isSubmitting = false,
  });
}

class CodeInputState extends PasswordRecoveryState {
  final String code;
  final bool showCodeWarning;
  final bool isSubmitting;

  CodeInputState({
    this.code = '',
    this.showCodeWarning = false,
    this.isSubmitting = false,
  });
}

class PasswordInputState extends PasswordRecoveryState {
  final String password;
  final bool showPasswordWarning;
  final bool isSubmitting;

  PasswordInputState({
    this.password = '',
    this.showPasswordWarning = false,
    this.isSubmitting = false,
  });
}

class PasswordRecoverySuccess extends PasswordRecoveryState {}

class PasswordRecoveryFailure extends PasswordRecoveryState {
  final String error;

  PasswordRecoveryFailure(this.error);
}
