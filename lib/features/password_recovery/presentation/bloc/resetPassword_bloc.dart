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
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<SendEmailButtonPressed>(_onSendEmailButtonPressed);
    on<SendCodeButtonPressed>(_onSendCodeButtonPressed);
    on<ChangePasswordButtonPressed>(_onChangePasswordButtonPressed);
    on<BackButtonPressed>(_onBackButtonPressed);
  }

  void _onEmailChanged(
      EmailChanged event, Emitter<PasswordRecoveryState> emit) {
    final emailWarning = !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(event.email);
    emit(state.copyWith(
      email: event.email,
      showEmailWarning: event.email.isEmpty || emailWarning,
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

  void _onConfirmPasswordChanged(
      ConfirmPasswordChanged event, Emitter<PasswordRecoveryState> emit) {
    emit(state.copyWith(
      confirmPassword: event.confirmPassword,
      showConfirmPasswordWarning: event.confirmPassword.isEmpty,
    ));
  }

  void _onSendEmailButtonPressed(
      SendEmailButtonPressed event, Emitter<PasswordRecoveryState> emit) async {
    final emailWarning = state.email.isEmpty;

    if (emailWarning) {
      emit(state.copyWith(
        showEmailWarning: emailWarning,
      ));
    } else {
      emit(state.copyWith(isSubmitting: true, isFailure: false));
      try {
        await passwordResetRepository.sendEmail(event.email);
        emit(state.copyWith(isSubmitting: false, emailSent: true));
      } catch (e) {
        emit(state.copyWith(isSubmitting: false, isFailure: true));
      }
    }
  }

  void _onSendCodeButtonPressed(
      SendCodeButtonPressed event, Emitter<PasswordRecoveryState> emit) async {
    final codeWarning = state.code.isEmpty;

    if (codeWarning) {
      emit(state.copyWith(
        showCodeWarning: codeWarning,
      ));
    } else {
      emit(state.copyWith(isSubmitting: true, isFailure: false));
      try {
        await passwordResetRepository.sendCode(event.email, event.code);
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
      if (state.password == state.confirmPassword) {
        emit(state.copyWith(isSubmitting: true, isFailure: false));
        try {
          await passwordResetRepository.changePassword(
              event.email, event.newPassword);
          emit(state.copyWith(
              isSubmitting: false, isSuccess: true, passwordChange: true));
        } catch (e) {
          emit(state.copyWith(isSubmitting: false, isFailure: true));
        }
      } else {
        emit(state.copyWith(showConfirmPasswordWarning: true, showPasswordWarning: true, isSubmitting: false, isFailure: true));
      }
    }
  }

  void _onBackButtonPressed(
      BackButtonPressed event, Emitter<PasswordRecoveryState> emit) async {
    emit(state.copyWith(
        isSubmitting: false,
        isSuccess: false,
        passwordChange: false,
        codeSent: false,
        emailSent: false));
  }
}

