import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/password_recovery_bloc.dart';
import '../bloc/password_recovery_event.dart';
import '../bloc/password_recovery_state.dart';
import '../../../../core/presentation/widgets/custom_text_input.dart';

class CodeInput extends StatelessWidget {
  final String email;

  const CodeInput({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 63),
          child: CustomTextInput(
            labelText: 'Код',
            onChanged: (code) {
              context.read<PasswordRecoveryBloc>().add(CodeChanged(code));
            },
            //showWarning: state.showCodeWarning,
          ),
        );
      },
    );
  }
}
