import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/widgets/custom_button.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 67, bottom: 120),
          child: CustomButton(
            onPressed: () {
              final authBloc = context.read<AuthBloc>();
              authBloc.add(const AuthSubmitted());
            },
            buttonText: 'Войти',
            isLoading: state.isSubmitting,
          ),
        );
      },
    );
  }
}