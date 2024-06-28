import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/resetPassword_bloc.dart';
import '../bloc/resetPassword_event.dart';
import '../bloc/resetPassword_state.dart';
import '../../../../core/presentation/widgets/custom_text_input.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        String errorMessage = state.email.isEmpty
            ? 'Заполните это поле'
            : state.isFailure
            ? 'Неправильная почта'
            : '';
        return Padding(
          padding: const EdgeInsets.only(top: 51),
          child: CustomTextInput(
            labelText: 'Email',
            onChanged: (email) {
              context.read<PasswordRecoveryBloc>().add(PasswordRecoveryEvent.emailChanged(email));
            },
            showEmptyWarning: state.email.isEmpty,
            showSystemWarning: state.isFailure,
            errorMessage: errorMessage,
          ),
        );
      },
    );
  }
}
