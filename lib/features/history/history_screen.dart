import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'HISTORY',
          textScaler: TextScaler.linear(2),
        )
      ],
    );
  }
}
