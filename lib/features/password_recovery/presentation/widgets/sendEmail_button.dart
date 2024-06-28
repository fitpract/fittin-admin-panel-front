import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/resetPassword_bloc.dart';
import '../bloc/resetPassword_event.dart';
import '../bloc/resetPassword_state.dart';
import '../../../../core/presentation/widgets/custom_button.dart';

class SendEmailButton extends StatelessWidget {
  const SendEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 45),
          child: CustomButton(
            onPressed: () {
              if (!state.isSubmitting) {
                final recoveryBloc = context.read<PasswordRecoveryBloc>();
                recoveryBloc.add(PasswordRecoveryEvent.sendEmailButtonPressed(state.email));
              }
            },
            buttonText: 'Отправить почту',
            isLoading: state.isSubmitting,
          ),
        );
      },
    );
  }
}
