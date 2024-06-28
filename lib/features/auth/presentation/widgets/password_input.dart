import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import '../../../../core/presentation/widgets/custom_text_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

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
          initialValue: state.password,
          obscureText: true,
          onChanged: (password) {
            context.read<AuthBloc>().add(AuthPasswordChanged(password));
          },
          showEmptyWarning: state.password.isEmpty,
          showSystemWarning: state.isFailure,
          errorMessage: errorMessage,
        );
      },
    );
  }
}
