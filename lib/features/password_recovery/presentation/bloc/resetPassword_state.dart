import 'package:freezed_annotation/freezed_annotation.dart';

part 'resetPassword_state.freezed.dart';

@freezed
class PasswordRecoveryState with _$PasswordRecoveryState {
  const factory PasswordRecoveryState({
    required String email,
    required String code,
    required String password,
    required bool showEmailWarning,
    required bool showCodeWarning,
    required bool showPasswordWarning,
    required bool isSubmitting,
    required bool isSuccess,
    required bool isFailure,
    required bool codeSent,
    required bool passwordChange,
  }) = _PasswordRecoveryState;

  factory PasswordRecoveryState.initial() => PasswordRecoveryState(
    email: '',
    code: '',
    password: '',
    showEmailWarning: false,
    showCodeWarning: false,
    showPasswordWarning: false,
    isSubmitting: false,
    isSuccess: false,
    isFailure: false,
    codeSent: false,
    passwordChange: false,
  );
}
