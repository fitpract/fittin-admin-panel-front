import 'package:auto_route/auto_route.dart';
import 'package:fittin_admin_panel/core/navigation/app_router.dart';
import 'package:fittin_admin_panel/core/style/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/style/theme/theme_colors.dart';

class AddCategoryButton extends StatefulWidget {
  const AddCategoryButton({super.key});

  @override
  State<StatefulWidget> createState() => _AddCategoryButtonState();
}

class _AddCategoryButtonState extends State<AddCategoryButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: Material(
        color: isHovered ? AppColors.orangeButton : Colors.transparent,
        borderRadius: BorderRadius.circular(5.0),
        child: InkWell(
          onTap: () {
            AutoRouter.of(context).navigate(
              const AddRouteForCategory(),
            );
          },
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 10.5),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.orangeButton), // Оранжевая граница
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                "Добавить",
                style: TextStyle(
                  color: isHovered ? Colors.white : AppColors.orangeButton,
                  fontSize: label.fontSize,
                  fontWeight: label.fontWeight,
                  fontFamily: label.fontFamily,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
