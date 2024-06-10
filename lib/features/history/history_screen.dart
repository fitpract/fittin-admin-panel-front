

import 'package:auto_route/annotations.dart';
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
    return Text('HISTORY', textScaler: TextScaler.linear(2),);;
  }
}
