import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:fittin_admin_panel/core/style/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fittin_admin_panel/export_all_bloc.dart';


class Wrapper extends StatelessWidget{
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => HomeBloc()),
      BlocProvider(create: (context) => CategoryBloc()),
    ], child: const AdminPanelApp());
  }
}


class AdminPanelApp extends StatefulWidget {
  const AdminPanelApp({super.key});

  @override
  State<AdminPanelApp> createState() => _AdminPanelAppState();
}

class _AdminPanelAppState extends State<AdminPanelApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: createLightTheme(),
      routerConfig:  _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
