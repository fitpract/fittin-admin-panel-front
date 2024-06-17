import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/password_recovery_bloc.dart';
import '../bloc/password_recovery_state.dart';
import '../../../../core/presentation/widgets/custom_button.dart';

class BackToAuthButton extends StatelessWidget {
  const BackToAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 120),
          child: CustomButton(
            onPressed: () {
              AutoRouter.of(context).navigate(
                const AuthRoute(),
              );
            },
            buttonText: 'Вернуться обратно',
          ),
        );
      },
    );
  }
}
/// BACK TO THE BONE TUTUTUTUTU