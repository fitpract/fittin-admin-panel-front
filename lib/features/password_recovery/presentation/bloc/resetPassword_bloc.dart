import 'package:flutter_bloc/flutter_bloc.dart';
import 'resetPassword_event.dart';
import 'resetPassword_state.dart';
import 'package:fittin_admin_panel/features/password_recovery/domain/resetPassword_repository.dart';

class PasswordRecoveryBloc
    extends Bloc<PasswordRecoveryEvent, PasswordRecoveryState> {
  final PasswordResetRepository passwordResetRepository =
      PasswordResetRepository();

  PasswordRecoveryBloc() : super(PasswordRecoveryState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<CodeChanged>(_onCodeChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SendCodeButtonPressed>(_onSendCodeButtonPressed);
    on<ChangePasswordButtonPressed>(_onChangePasswordButtonPressed);
  }

  void _onEmailChanged(
      EmailChanged event, Emitter<PasswordRecoveryState> emit) {
    emit(state.copyWith(
      email: event.email,
      showEmailWarning: event.email.isEmpty,
    ));
  }

  void _onCodeChanged(CodeChanged event, Emitter<PasswordRecoveryState> emit) {
    emit(state.copyWith(
      code: event.code,
      showCodeWarning: event.code.isEmpty,
    ));
  }

  void _onPasswordChanged(
      PasswordChanged event, Emitter<PasswordRecoveryState> emit) {
    emit(state.copyWith(
      password: event.password,
      showPasswordWarning: event.password.isEmpty,
    ));
  }

  void _onSendCodeButtonPressed(
      SendCodeButtonPressed event, Emitter<PasswordRecoveryState> emit) async {
    final emailWarning = state.email.isEmpty;

    if (emailWarning) {
      emit(state.copyWith(
        showEmailWarning: emailWarning,
      ));
    } else {
      emit(state.copyWith(isSubmitting: true, isFailure: false));
      try {
        await passwordResetRepository.sendResetPasswordCode(event.email);
        emit(state.copyWith(isSubmitting: false, codeSent: true));
      } catch (e) {
        emit(state.copyWith(isSubmitting: false, isFailure: true));
      }
    }
  }

  void _onChangePasswordButtonPressed(ChangePasswordButtonPressed event,
      Emitter<PasswordRecoveryState> emit) async {
    final codeWarning = state.code.isEmpty;
    final passwordWarning = state.password.isEmpty;

    if (codeWarning || passwordWarning) {
      emit(state.copyWith(
        showCodeWarning: codeWarning,
        showPasswordWarning: passwordWarning,
      ));
    } else {
      emit(state.copyWith(isSubmitting: true, isFailure: false));
      try {
        await passwordResetRepository.resetPassword(
            event.email, event.code, event.newPassword);
        emit(state.copyWith(
            isSubmitting: false, isSuccess: true, passwordChange: true));
      } catch (e) {
        emit(state.copyWith(isSubmitting: false, isFailure: true));
      }
    }
  }
}
