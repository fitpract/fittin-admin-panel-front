import 'package:auto_route/annotations.dart';
import 'package:fittin_admin_panel/features/catalog/category/category_view/widgets/category/category_banner.dart';
import 'package:fittin_admin_panel/features/catalog/category/category_view/widgets/top_panel/top_panel.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreenForCategory extends StatefulWidget {
  const MainScreenForCategory({super.key});

  @override
  State<StatefulWidget> createState() => _MainScreenForCategoryState();
}

class _MainScreenForCategoryState extends State<MainScreenForCategory> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 31),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopPanel(),
          CategoryBanner()
        ],
      ),
    );
  }
}
