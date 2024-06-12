import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import 'custom_text_input.dart';

class UsernameInput extends StatelessWidget {
  const UsernameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return CustomTextInput(
          labelText: 'Логин',
          onChanged: (username) {
            context.read<AuthBloc>().add(AuthUsernameChanged(username));
          },
          showWarning: state.showUsernameWarning,
        );
      },
    );
  }
}
