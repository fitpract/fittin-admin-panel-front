import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/resetPassword_bloc.dart';
import '../bloc/resetPassword_event.dart';
import '../bloc/resetPassword_state.dart';
import '../../../../core/presentation/widgets/custom_text_input.dart';

class CodeInput extends StatelessWidget {
  const CodeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        String errorMessage = state.code.isEmpty
            ? 'Заполните это поле'
            : state.isFailure
            ? 'Неправильный код'
            : '';
        return Padding(
          padding: const EdgeInsets.only(top: 51),
          child: CustomTextInput(
            labelText: 'Введите код',
            onChanged: (code) {
              context.read<PasswordRecoveryBloc>().add(PasswordRecoveryEvent.codeChanged(code));
            },
            showEmptyWarning: state.code.isEmpty,
            showSystemWarning: state.isFailure,
            errorMessage: errorMessage,
          ),
        );
      },
    );
  }
}
