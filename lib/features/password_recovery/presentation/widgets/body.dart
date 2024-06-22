import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:fittin_admin_panel/features/password_recovery/presentation/widgets/change_password_button.dart';
import 'package:fittin_admin_panel/features/password_recovery/presentation/widgets/send_code_button.dart';
import 'package:fittin_admin_panel/features/password_recovery/presentation/widgets/verify_code_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/style/theme/theme_colors.dart';
import '../../../../core/style/theme/theme_text_styles.dart';
import '../bloc/password_recovery_bloc.dart';
import '../bloc/password_recovery_state.dart';
import 'back_button.dart';
import 'email_input.dart';
import 'code_input.dart';
import 'new_password_input.dart';

class PasswordRecoveryBody extends StatelessWidget {
  const PasswordRecoveryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordRecoveryBloc(),
      child: BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
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
                        blurRadius: 35),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 64, bottom: 35),
                      child: Text(
                        'Вход в систему',
                        textAlign: TextAlign.center,
                        style: headlineLarge,
                      ),
                    ),
                    const Text(
                      'Восстановление пароля',
                      textAlign: TextAlign.center,
                      style: headlineMedium,
                    ),
                    ..._buildContent(context, state),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildContent(
      BuildContext context, PasswordRecoveryState state) {
    switch (state.runtimeType) {
      case const (PasswordRecoveryInitial):
      case const (EmailInputState):
        return [
          const Text(
            'Введите email, который вы указывали при регестрации',
            textAlign: TextAlign.center,
            style: headlineSmall,
          ),
          const EmailInput(), // Используем виджет для ввода email
          const SendCodeButton(),
          Padding(
            padding: const EdgeInsets.only(bottom: 96),
            child: TextButton(
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const AuthRoute(),
                );
              },
              child: const Text(
                "Вернуться",
                style: bodyLarge,
              ),
            ),
          ),
        ];
      case const (CodeInputState):
        return [
          const Text(
            'На ваш email было выслано письмо с кодом подтверждения',
            textAlign: TextAlign.center,
            style: headlineSmall,
          ),
          const CodeInput(),
          const VerifyCodeButton(), // Используем виджет для ввода кода
          Padding(
            padding: const EdgeInsets.only(bottom: 96),
            child: TextButton(
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const AuthRoute(),
                );
              },
              child: const Text(
                "Вернуться",
                style: bodyLarge,
              ),
            ),
          ),
        ];
      case const (PasswordInputState):
        return [
          const NewPasswordInput(), // Используем виджет для ввода нового пароля
          const ChangePasswordButton(),
          Padding(
            padding: const EdgeInsets.only(bottom: 96),
            child: TextButton(
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const AuthRoute(),
                );
              },
              child: const Text(
                "Вернуться",
                style: bodyLarge,
              ),
            ),
          ),
        ];
      case const (PasswordRecoverySuccess):
        return [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Пароль успешно сменен', textAlign: TextAlign.center, style: headlineMedium,),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: BackToAuthButton(),
          ),
        ];
      case const (PasswordRecoveryFailure):
        return [
          Center(
            child: Text('Error: ${(state as PasswordRecoveryFailure).error}'),
          ),
        ];
      default:
        return [];
    }
  }
}
