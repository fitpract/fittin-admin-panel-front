import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:fittin_admin_panel/core/style/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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