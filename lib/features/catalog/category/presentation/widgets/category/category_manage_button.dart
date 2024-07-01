import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';

class CategoryManageButton extends StatefulWidget {
  const CategoryManageButton({super.key});

  @override
  State<StatefulWidget> createState() => _CategoryManageButtonState();
}

class _CategoryManageButtonState extends State<CategoryManageButton> {
  int hoveredIndex = -1; // Индекс, указывающий на наведенную кнопку (-1 значит ни одна кнопка не наведена)
  bool showCategory = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 76),
      child: Row(
        children: [
          buildButton(0, 'lib/core/style/assets/edit_icon.svg', AppColors.editButtonColor),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: buildButton(1, 'lib/core/style/assets/visible_icon.svg', AppColors.orangeButton),
          ),
          buildButton(2, 'lib/core/style/assets/delete_icon.svg', AppColors.deleteButtonColor),
        ],
      ),
    );
  }

  Widget buildButton(int index, String iconPath, Color borderColor) {
    bool isHovered = hoveredIndex == index;

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          hoveredIndex = index;
        });
      },
      onExit: (_) {
        setState(() {
          hoveredIndex = -1;
        });
      },
      child: GestureDetector(
        onTap: () {
          switch (index) {
            case 0:
            // Действия для кнопки редактирования
              break;
            case 1:
            // Действия для кнопки отображения
              break;
            case 2:
            // Действия для кнопки удаления
              break;
          }
        },
        child: SizedBox(
          width: 40,
          height: 40,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: 2.0),
              borderRadius: BorderRadius.circular(8.0),
              color: isHovered ? borderColor : Colors.transparent,
            ),
            child: Center(
              child: SvgPicture.asset(
                iconPath,
                width: 24,
                height: 24,
                color: isHovered ? Colors.white : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
