import 'package:fittin_admin_panel/features/catalog/category/presentation/widgets/top_panel/sort_list.dart';
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 27, bottom: 3),
          child: AddCategoryButton(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 27, bottom: 3),
          child: SortingDropdown(),
        ),
      ],
    );
  }
}
