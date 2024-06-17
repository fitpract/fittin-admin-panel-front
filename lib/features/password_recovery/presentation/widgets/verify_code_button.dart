import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/password_recovery_bloc.dart';
import '../bloc/password_recovery_event.dart';
import '../bloc/password_recovery_state.dart';
import '../../../../core/presentation/widgets/custom_button.dart';

class VerifyCodeButton extends StatelessWidget {
  const VerifyCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 45),
          child: CustomButton(
            onPressed: () {
              if (state is CodeInputState && !state.isSubmitting) {
                final recoveryBloc = context.read<PasswordRecoveryBloc>();
                recoveryBloc.add(const VerifyCodeSubmitted());
              }
            },
            buttonText: 'Подтвердить код',
            isLoading: state is CodeInputState && state.isSubmitting,
          ),
        );
      },
    );
  }
}
