import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/style/theme/theme_text_styles.dart';
import '../bloc/resetPassword_bloc.dart';
import '../bloc/resetPassword_state.dart';
import 'back_button.dart';
import 'change_password_button.dart';
import 'code_input.dart';
import 'email_input.dart';
import 'new_password_input.dart';
import 'send_code_button.dart';

class PasswordRecoveryBody extends StatelessWidget {
  const PasswordRecoveryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordRecoveryBloc(),
      child: Scaffold(
        body: Center(
          child: Container(
            width: 460,
            height: 660,
            padding: const EdgeInsets.only(left: 45, right: 45),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.08),
                  blurRadius: 35,
                ),
              ],
            ),
            child: BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _buildForm(context, state),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildForm(BuildContext context, PasswordRecoveryState state) {
    if (state.isSuccess) {
      return _buildSuccessView();
    } else {
      return _buildFormView(context, state);
    }
  }

  List<Widget> _buildFormView(
      BuildContext context, PasswordRecoveryState state) {
    if (state.codeSent == false) {
      return [
        const Padding(
          padding: EdgeInsets.only(top: 69, bottom: 35),
          child: Text(
            'Вход в систему',
            textAlign: TextAlign.center,
            style: headline,
          ),
        ),
        const Text(
          'Восстановления пароля',
          textAlign: TextAlign.center,
          style: subhead,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 63),
          child: Text(
            'Введите email, который вы указывали при регистрации',
            textAlign: TextAlign.center,
            style: title,
          ),
        ),
        const EmailInput(),
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
                'Вернуться для входа в систему',
                textAlign: TextAlign.center,
                style: label,
              )
          ),
        )
      ];
    } else {
      return [
        const Padding(
          padding: EdgeInsets.only(top: 69, bottom: 35),
          child: Text(
            'Вход в систему',
            textAlign: TextAlign.center,
            style: headline,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 25),
          child: Text(
            'Восстановления пароля',
            textAlign: TextAlign.center,
            style: subhead,
          ),
        ),
        const CodeInput(),
        const NewPasswordInput(),
        const ChangePasswordButton(),
        Padding(
          padding: const EdgeInsets.only(bottom: 75),
          child: TextButton(
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const AuthRoute(),
                );
              },
              child: const Text(
                'Вернуться для входа в систему',
                textAlign: TextAlign.center,
                style: label,
              )
          ),
        )
      ];
    }
  }

  List<Widget> _buildSuccessView() {
    return [
      const Padding(
        padding: EdgeInsets.only(top: 69, bottom: 35),
        child: Text(
          'Вход в систему',
          textAlign: TextAlign.center,
          style: headline,
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(bottom: 55),
        child: Text(
          'Восстановления пароля',
          textAlign: TextAlign.center,
          style: subhead,
        ),
      ),
      const Text(
        'Ваш пароль успешно изменен!',
        textAlign: TextAlign.center,
        style: title,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 18, left: 40, right: 40),
        child: Text(
          'Теперь вы можете использовать новый пароль для входа.',
          textAlign: TextAlign.center,
          style: title,
        ),
      ),
      const SizedBox(height: 12),
      const BackToAuthButton(),
    ];
  }
}
