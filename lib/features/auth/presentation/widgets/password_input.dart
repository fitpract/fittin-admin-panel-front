import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import '../../../../core/presentation/widgets/custom_text_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        String errorMessage = state.password.isEmpty
            ? 'Заполните это поле'
            : state.isFailure
            ? 'Неправильные данные'
            : '';

        return CustomTextInput(
          labelText: 'Пароль',
          obscureText: true,
          onChanged: (password) {
            context.read<AuthBloc>().add(AuthPasswordChanged(password));
          },
          showWarning: state.showPasswordWarning || state.isFailure,
          errorMessage: errorMessage,
        );
      },
    );
  }
}
