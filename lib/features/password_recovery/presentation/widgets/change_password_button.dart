import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/password_recovery_bloc.dart';
import '../bloc/password_recovery_event.dart';
import '../bloc/password_recovery_state.dart';
import '../../../../core/presentation/widgets/custom_button.dart';

class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 45),
          child: CustomButton(
            onPressed: () {
              if (state is PasswordInputState && !state.isSubmitting) {
                final recoveryBloc = context.read<PasswordRecoveryBloc>();
                recoveryBloc.add(NewPasswordSubmitted());
              }
            },
            buttonText: 'Изменить пароль',
            isLoading: state is PasswordInputState && state.isSubmitting,
          ),
        );
      },
    );
  }
}
