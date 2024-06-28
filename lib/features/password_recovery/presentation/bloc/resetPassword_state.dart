import 'package:freezed_annotation/freezed_annotation.dart';

part 'resetPassword_state.freezed.dart';

@freezed
class PasswordRecoveryState with _$PasswordRecoveryState {
  const factory PasswordRecoveryState({
    required String email,
    required String code,
    required String password,
    required String confirmPassword,
    required bool showEmailWarning,
    required bool showCodeWarning,
    required bool showPasswordWarning,
    required bool showConfirmPasswordWarning,
    required bool isSubmitting,
    required bool isSuccess,
    required bool isFailure,
    required bool emailSent,
    required bool codeSent,
    required bool passwordChange,
  }) = _PasswordRecoveryState;

  factory PasswordRecoveryState.initial() => const PasswordRecoveryState(
    email: '',
    code: '',
    password: '',
    confirmPassword: '',
    showEmailWarning: false,
    showCodeWarning: false,
    showPasswordWarning: false,
    showConfirmPasswordWarning: false,
    isSubmitting: false,
    isSuccess: false,
    isFailure: false,
    emailSent: false,
    codeSent: false,
    passwordChange: false,
  );
}
