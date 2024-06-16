import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 76, bottom: 120),
          child: Container(
            child: state.isSubmitting
                ? const CircularProgressIndicator()
                : SizedBox(
                    height: 59,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        final authBloc = context.read<AuthBloc>();
                        authBloc.add(const AuthSubmitted());
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                            (Set<WidgetState> states) {
                          if (states.contains(WidgetState.hovered)) {
                            return AppColors
                                .orangeActiveButton; // Темный цвет при наведении
                          }
                          return AppColors.orangeButton; // Цвет по умолчанию
                        }),
                        foregroundColor:
                            WidgetStateProperty.all<Color>(AppColors.white),
                      ),
                      child: const Text('Войти'),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
