import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'features/auth/presentation/auth_screen.dart';

class AdminPanelApp extends StatelessWidget {
  const AdminPanelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFFF8200),
        ),
      ),
      home: AuthScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
