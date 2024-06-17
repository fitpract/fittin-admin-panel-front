import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/password_recovery_bloc.dart';
import '../bloc/password_recovery_event.dart';
import '../bloc/password_recovery_state.dart';
import '../../../../core/presentation/widgets/custom_text_input.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 63),
          child: CustomTextInput(
            labelText: 'Email',
            onChanged: (email) {
              context.read<PasswordRecoveryBloc>().add(EmailChanged(email));
            },
            //showWarning: state.showEmailWarning,
          ),
        );
      },
    );
  }
}
