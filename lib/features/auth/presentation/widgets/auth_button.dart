import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.isSubmitting
            ? const CircularProgressIndicator()
            : SizedBox(
          height: 40,
          width: double.infinity,
              child: ElevatedButton(
                        onPressed: () {
              final authBloc = context.read<AuthBloc>();
              final username = state.username;
              final password = state.password;

              if (username.isEmpty || password.isEmpty) {
                authBloc.add(const AuthSubmitted());
              } else {
                authBloc.add(const AuthSubmitted());
              }
                        },
                        style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
                        ),
                        child: const Text('Войти'),
                      ),
            );
      },
    );
  }
}
