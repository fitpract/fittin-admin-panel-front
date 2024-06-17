import 'package:bloc/bloc.dart';
import 'password_recovery_event.dart';
import 'password_recovery_state.dart';

class PasswordRecoveryBloc extends Bloc<PasswordRecoveryEvent, PasswordRecoveryState> {
  PasswordRecoveryBloc() : super(PasswordRecoveryInitial()) {
    on<EmailChanged>(_onEmailChanged);
    on<SendCodeSubmitted>(_onSendCodeSubmitted);
    on<CodeChanged>(_onCodeChanged);
    on<VerifyCodeSubmitted>(_onVerifyCodeSubmitted);
    on<PasswordChanged>(_onPasswordChanged);
    on<NewPasswordSubmitted>(_onNewPasswordSubmitted);
  }

  void _onEmailChanged(EmailChanged event, Emitter<PasswordRecoveryState> emit) {
    emit(EmailInputState(
      email: event.email,
      showEmailWarning: event.email.isEmpty,
    ));
  }

  void _onSendCodeSubmitted(SendCodeSubmitted event, Emitter<PasswordRecoveryState> emit) {
    final currentState = state;
    if (currentState is EmailInputState) {
      if (currentState.email.isEmpty) {
        emit(EmailInputState(email: currentState.email, showEmailWarning: true));
      } else {
        emit(CodeInputState());
      }
    }
  }

  void _onCodeChanged(CodeChanged event, Emitter<PasswordRecoveryState> emit) {
    final currentState = state;
    if (currentState is CodeInputState) {
      emit(CodeInputState(
        code: event.code,
        showCodeWarning: event.code.isEmpty,
      ));
    }
  }

  void _onVerifyCodeSubmitted(VerifyCodeSubmitted event, Emitter<PasswordRecoveryState> emit) {
    final currentState = state;
    if (currentState is CodeInputState) {
      if (currentState.code.isEmpty) {
        emit(CodeInputState(
          code: currentState.code,
          showCodeWarning: true,
        ));
      } else {
        emit(PasswordInputState());
      }
    }
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<PasswordRecoveryState> emit) {
    emit(PasswordInputState(
      password: event.password,
      showPasswordWarning: event.password.isEmpty,
    ));
  }

  void _onNewPasswordSubmitted(NewPasswordSubmitted event, Emitter<PasswordRecoveryState> emit) {
    final currentState = state;
    if (currentState is PasswordInputState) {
      if (currentState.password.isEmpty) {
        emit(PasswordInputState(
          password: currentState.password,
          showPasswordWarning: true,
        ));
      } else {
        emit(PasswordRecoverySuccess());
      }
    }
  }
}
