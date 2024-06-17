import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/password_recovery_bloc.dart';
import '../bloc/password_recovery_event.dart';
import '../bloc/password_recovery_state.dart';
import '../../../../core/presentation/widgets/custom_text_input.dart';

class NewPasswordInput extends StatelessWidget {

  const NewPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 63),
          child: CustomTextInput(
            labelText: 'Новый пароль',
            obscureText: true,
            onChanged: (password) {
              context.read<PasswordRecoveryBloc>().add(PasswordChanged(password));
            },
            //showWarning: state.showPasswordWarning,
          ),
        );
      },
    );
  }
}
