import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:fittin_admin_panel/features/home/presentation/home_screen.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF8200),
        ),
      ),
      routerConfig:  _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
