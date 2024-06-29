import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/features/password_recovery/presentation/widgets/sendEmail_button.dart';
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
import 'sendCode_button.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 45),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.08),
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
    } else if (!state.emailSent) {
      return _buildEmailForm(context);
    } else if (!state.codeSent) {
      return _buildCodeForm(context);
    } else {
      return _buildPasswordForm(context);
    }
  }

  List<Widget> _buildEmailForm(BuildContext context) {
    return [
      const FormHeader(),
      const Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          'Восстановления пароля',
          textAlign: TextAlign.center,
          style: subhead,
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Text(
          'Введите email, который вы указывали при регистрации',
          textAlign: TextAlign.center,
          style: title,
        ),
      ),
      const EmailInput(),
      const SendEmailButton(),
      _buildBackToAuthButton(context),
    ];
  }

  List<Widget> _buildCodeForm(BuildContext context) {
    return [
      const FormHeader(),
      const Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          'Восстановления пароля',
          textAlign: TextAlign.center,
          style: subhead,
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: Text(
          'На ваш email было выслано письмо с кодом подтверждения',
          textAlign: TextAlign.center,
          style: title,
        ),
      ),
      const CodeInput(),
      const SendCodeButton(),
      _buildBackToAuthButton(context),
    ];
  }

  List<Widget> _buildPasswordForm(BuildContext context) {
    return [
      const FormHeader(),
      const Text(
        'Восстановления пароля',
        textAlign: TextAlign.center,
        style: subhead,
      ),
      const NewPasswordInput(),
      const ChangePasswordButton(),
    ];
  }

  List<Widget> _buildSuccessView() {
    return [
      const FormHeader(),
      const Text(
        'Восстановления пароля',
        textAlign: TextAlign.center,
        style: subhead,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 55, bottom: 18),
        child: Text(
          'Ваш пароль успешно изменен!',
          textAlign: TextAlign.center,
          style: title,
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
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

  Widget _buildBackToAuthButton(BuildContext context) {
    return Padding(
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
        ),
      ),
    );
  }
}

class FormHeader extends StatelessWidget {
  const FormHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 69, bottom: 35),
      child: Column(
        children: [
          Text(
            'Вход в систему',
            textAlign: TextAlign.center,
            style: headline,
          ),
        ],
      ),
    );
  }
}
