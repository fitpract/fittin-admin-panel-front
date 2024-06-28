import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/features/password_recovery/presentation/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/resetPassword_bloc.dart';

@RoutePage()
class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordRecoveryBloc(),
      child: Scaffold(
        body: PasswordRecoveryBody(),
      ),
    );
  }
}
