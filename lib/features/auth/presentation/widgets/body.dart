import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';
import 'package:fittin_admin_panel/core/style/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fittin_admin_panel/features/auth/presentation/widgets/password_input.dart';
import 'package:fittin_admin_panel/features/auth/presentation/widgets/username_input.dart';
import 'package:fittin_admin_panel/features/auth/presentation/widgets/auth_button.dart';

import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Container(
                width: 460,
                padding: const EdgeInsets.only(left: 45, right: 45),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.08),
                      blurRadius: 35
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 64,
                          bottom:
                              78),
                      child: Text(
                        'Вход в систему',
                        textAlign: TextAlign.center,
                        style: headlineLarge,
                      ),
                    ),
                    const UsernameInput(),
                    const PasswordInput(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              checkColor: AppColors.activeField, // Цвет галочки
                              fillColor: WidgetStateProperty.all<Color>(Colors.transparent), // Прозрачный фон
                              value: state.rememberMe,
                              onChanged: (value) {
                                context.read<AuthBloc>().add(ToggleRememberMe());
                              },
                              side: WidgetStateBorderSide.resolveWith(
                                    (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return const BorderSide(color: AppColors.activeField, width: 2); // Цвет рамки при активации
                                  }
                                  return const BorderSide(color: AppColors.nonActiveField, width: 2,); // Цвет рамки по умолчанию
                                },
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 9.4),
                              child: Text("Запомнить", style: bodyLarge),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Забыли пароль?", style: bodyLarge,),
                        ),
                      ],
                    ),
                    const AuthButton(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
