import 'package:fittin_admin_panel/core/style/theme/button_style.dart';
import 'package:flutter/material.dart';


class CategoryManageButton extends StatefulWidget {
  const CategoryManageButton({super.key});

  @override
  State<StatefulWidget> createState() => _CategoryManageButtonState();
}

class _CategoryManageButtonState extends State<CategoryManageButton> {


  bool showCategory = true;
  IconData icon = Icons.visibility_outlined;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.outlined(
              onPressed: (){

              },
              icon: const Icon(Icons.border_color),
            style: rectangleButtonStyle()

          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.outlined(
            key: ValueKey(showCategory),
            onPressed: (){
              setState(() {
                showCategory = !showCategory;
                icon = showCategory ? Icons.visibility_outlined : Icons.visibility_off_outlined;
              });
            },
            icon: Icon(icon),
              style: rectangleButtonStyle()
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.outlined(
              onPressed: (){},
              icon: const Icon(Icons.delete_outline_sharp),
            color: Theme.of(context).focusColor,
              style: rectangleButtonStyle()
          ),
        )
      ],
    );
  }
}
