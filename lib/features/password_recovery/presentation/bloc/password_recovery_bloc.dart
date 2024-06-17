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
      showEmailWarning: event.email.isEmpty,
    ));
  }

  void _onSendCodeSubmitted(SendCodeSubmitted event, Emitter<PasswordRecoveryState> emit) async {
    final currentState = state;
    if (currentState is EmailInputState) {
      if (currentState.showEmailWarning) {
        emit(const EmailInputState(
          showEmailWarning: true,
        ));
      } else {
        emit(const EmailInputState(isSubmitting: true));
      }
    }
  }

  void _onCodeChanged(CodeChanged event, Emitter<PasswordRecoveryState> emit) {
    final currentState = state;
    if (currentState is CodeInputState) {
      emit(CodeInputState(
        currentState.email,
        showCodeWarning: event.code.isEmpty,
      ));
    }
  }

  void _onVerifyCodeSubmitted(VerifyCodeSubmitted event, Emitter<PasswordRecoveryState> emit) async {
    final currentState = state;
    if (currentState is CodeInputState) {
      if (currentState.showCodeWarning) {
        emit(CodeInputState(
          currentState.email,
          showCodeWarning: true,
        ));
      } else {
        emit(CodeInputState(
          currentState.email,
          isSubmitting: true,
        ));
      }
    }
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<PasswordRecoveryState> emit) {
    final currentState = state;
    if (currentState is PasswordInputState) {
      emit(PasswordInputState(
        email: currentState.email,
        code: currentState.code,
        showPasswordWarning: event.password.isEmpty,
      ));
    }
  }

  void _onNewPasswordSubmitted(NewPasswordSubmitted event, Emitter<PasswordRecoveryState> emit) async {
    final currentState = state;
    if (currentState is PasswordInputState) {
      if (currentState.showPasswordWarning) {
        emit(PasswordInputState(
          email: currentState.email,
          code: currentState.code,
          showPasswordWarning: true,
        ));
      } else {
        emit(PasswordInputState(
          email: currentState.email,
          code: currentState.code,
          isSubmitting: true,
        ));
        emit(PasswordRecoverySuccess());
      }
    }
  }
}
