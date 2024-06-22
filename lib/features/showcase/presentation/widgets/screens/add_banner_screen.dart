import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class AddBannerScreen extends StatefulWidget {
  const AddBannerScreen({super.key});

  @override
  State<AddBannerScreen> createState() => _AddBannerScreenState();
}

class _AddBannerScreenState extends State<AddBannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      color: Theme.of(context).colorScheme.onPrimary,
      child: const Placeholder()
    );
  }
}
