import 'package:fittin_admin_panel/core/style/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'features/auth/presentation/auth_screen.dart';

class AdminPanelApp extends StatelessWidget {
  const AdminPanelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: createLightTheme(),
      home: const AuthScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
