import 'package:flutter/material.dart';

import 'category_info.dart';
import 'category_manage_button.dart';

class CategoryBanner extends StatefulWidget {
  const CategoryBanner({super.key});

  @override
  State<StatefulWidget> createState() => _CategoryBannerState();
}

class _CategoryBannerState extends State<CategoryBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        color: Colors.black12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 90,
                width: 90,
                child: Icon(Icons.person, size: 100,)
            ),
            CategoryInfo(count: "", idCategory: "", name: ""),
            const CategoryManageButton()
          ],
        ),
      ),
    );
  }
}
