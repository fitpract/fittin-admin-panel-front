import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        height: 249,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 35, right: 35),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 172,
                    width: 147,
                    color: AppColors.emptyBanner,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: CategoryInfo(count: "1", idCategory: "1", name: "1"),
                  ),
                ],
              ),
              const Positioned(
                top: 0,
                right: 0,
                child: CategoryManageButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
