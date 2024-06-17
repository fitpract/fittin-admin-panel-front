import 'package:equatable/equatable.dart';

abstract class PasswordRecoveryState extends Equatable {
  const PasswordRecoveryState({this.isSubmitting = false});

  final bool isSubmitting;

  @override
  List<Object?> get props => [isSubmitting];
}

class PasswordRecoveryInitial extends PasswordRecoveryState {}

class EmailInputState extends PasswordRecoveryState {
  final bool showEmailWarning;

  const EmailInputState({
    bool isSubmitting = false,
    this.showEmailWarning = false,
  }) : super(isSubmitting: isSubmitting);

  @override
  List<Object?> get props => [showEmailWarning, isSubmitting];
}

class CodeInputState extends PasswordRecoveryState {
  final String email;
  final bool showCodeWarning;

  const CodeInputState(
      this.email, {
        bool isSubmitting = false,
        this.showCodeWarning = false,
      }) : super(isSubmitting: isSubmitting);

  @override
  List<Object?> get props => [email, showCodeWarning, isSubmitting];
}

class PasswordInputState extends PasswordRecoveryState {
  final String email;
  final String code;
  final bool showPasswordWarning;

  const PasswordInputState({
    required this.email,
    required this.code,
    bool isSubmitting = false,
    this.showPasswordWarning = false,
  }) : super(isSubmitting: isSubmitting);

  @override
  List<Object?> get props => [email, code, showPasswordWarning, isSubmitting];
}

class PasswordRecoverySuccess extends PasswordRecoveryState {}

class PasswordRecoveryFailure extends PasswordRecoveryState {
  final String error;

  const PasswordRecoveryFailure(this.error);

  @override
  List<Object?> get props => [error];
}
