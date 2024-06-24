import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/resetPassword_bloc.dart';
import '../bloc/resetPassword_event.dart';
import '../bloc/resetPassword_state.dart';
import '../../../../core/presentation/widgets/custom_text_input.dart';

class NewPasswordInput extends StatelessWidget {
  const NewPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        return CustomTextInput(
          labelText: 'Новый пароль',
          obscureText: true,
          onChanged: (password) {
            context.read<PasswordRecoveryBloc>().add(PasswordRecoveryEvent.passwordChanged(password));
          },
          showWarning: state.showPasswordWarning,
        );
      },
    );
  }
}
