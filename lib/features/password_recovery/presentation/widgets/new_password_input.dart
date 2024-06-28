import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/resetPassword_bloc.dart';
import '../bloc/resetPassword_event.dart';
import '../bloc/resetPassword_state.dart';
import '../../../../core/presentation/widgets/custom_text_input.dart';

class NewPasswordInput extends StatelessWidget {
  const NewPasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        String getErrorMessage(String field, bool isFailure) {
          if (field.isEmpty) {
            return 'Заполните это поле';
          } else if (isFailure) {
            return 'Пароли должны совпадать!';
          }
          return '';
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPasswordInput(
              context,
              'Новый пароль',
              state.password,
                  (password) => context.read<PasswordRecoveryBloc>().add(PasswordRecoveryEvent.passwordChanged(password)),
              getErrorMessage(state.password, state.isFailure),
            ),
            _buildPasswordInput(
              context,
              'Подтвердить пароль',
              state.confirmPassword,
                  (confirmPassword) => context.read<PasswordRecoveryBloc>().add(PasswordRecoveryEvent.confirmPasswordChanged(confirmPassword)),
              getErrorMessage(state.confirmPassword, state.isFailure),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPasswordInput(
      BuildContext context,
      String labelText,
      String fieldValue,
      Function(String) onChanged,
      String errorMessage,
      ) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: CustomTextInput(
        labelText: labelText,
        obscureText: true,
        onChanged: onChanged,
        showEmptyWarning: fieldValue.isEmpty,
        showSystemWarning: errorMessage.isNotEmpty,
        errorMessage: errorMessage,
      ),
    );
  }
}