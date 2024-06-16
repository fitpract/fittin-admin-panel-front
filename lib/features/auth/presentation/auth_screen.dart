import 'package:fittin_admin_panel/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:fittin_admin_panel/features/auth/presentation/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(),
      child: const Scaffold(
        body: Body(),
      ),
    );
  }
}
