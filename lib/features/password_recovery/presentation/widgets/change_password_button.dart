import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/resetPassword_bloc.dart';
import '../bloc/resetPassword_event.dart';
import '../bloc/resetPassword_state.dart';
import '../../../../core/presentation/widgets/custom_button.dart';

class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 45),
          child: CustomButton(
            onPressed: () {
              if (!state.isSubmitting) {
                final recoveryBloc = context.read<PasswordRecoveryBloc>();
                recoveryBloc.add(PasswordRecoveryEvent.changePasswordButtonPressed(state.email, state.code, state.password));
              }
            },
            buttonText: 'Сменить пароль',
            isLoading: state.isSubmitting,
          ),
        );
      },
    );
  }
}
