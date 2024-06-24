import 'package:freezed_annotation/freezed_annotation.dart';

part 'resetPassword_event.freezed.dart';

@freezed
class PasswordRecoveryEvent with _$PasswordRecoveryEvent {
  const factory PasswordRecoveryEvent.emailChanged(String email) = EmailChanged;
  const factory PasswordRecoveryEvent.codeChanged(String code) = CodeChanged;
  const factory PasswordRecoveryEvent.passwordChanged(String password) = PasswordChanged;

  const factory PasswordRecoveryEvent.submitEmail() = SubmitEmail;
  const factory PasswordRecoveryEvent.sendCodeButtonPressed(String email) = SendCodeButtonPressed;
  const factory PasswordRecoveryEvent.changePasswordButtonPressed(String email, String code, String newPassword) = ChangePasswordButtonPressed;
}
