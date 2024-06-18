import 'package:flutter/material.dart';

import 'add_category_button.dart';

class TopPanel extends StatefulWidget {
  const TopPanel({super.key});

  @override
  State<StatefulWidget> createState() => _TopPanelState();
}

class _TopPanelState extends State<TopPanel> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AddCategoryButton()
      ],

    );
  }
}
