import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fittin_admin_panel/features/auth/presentation/widgets/password_input.dart';
import 'package:fittin_admin_panel/features/auth/presentation/widgets/username_input.dart';
import 'package:fittin_admin_panel/features/auth/presentation/widgets/auth_button.dart';
import 'package:flutter_svg/svg.dart';

import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                  // Добавляем верхнюю границу для создания цветной шапки
                  border: Border(
                    top: BorderSide(
                      color: Colors.blue[100]!, // Цвет верхней части
                      width: 100, // Толщина верхней части
                    ),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.only(top: 16.0), // Добавлено смещение вверх на 16 пикселей
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/logo.svg',
                          width: 40, // Ширина изображения
                          height: 40, // Высота изображения
                        ),
                      ),

                    ),

                    const SizedBox(height: 24.0),
                    const UsernameInput(),
                    const SizedBox(height: 16.0),
                    const PasswordInput(),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: state.rememberMe,
                              onChanged: (value) {
                                // Отправляем событие ToggleRememberMe в блок при изменении флажка
                                context.read<AuthBloc>().add(ToggleRememberMe());
                              },
                            ),
                            const Text("Запомнить"),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Забыли пароль?"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
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
