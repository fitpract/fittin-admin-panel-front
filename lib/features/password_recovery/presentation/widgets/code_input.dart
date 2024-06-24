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
        return CustomTextInput(
          labelText: 'Код',
          onChanged: (code) {
            context.read<PasswordRecoveryBloc>().add(PasswordRecoveryEvent.codeChanged(code));
          },
          showWarning: state.showCodeWarning,
        );
      },
    );
  }
}
