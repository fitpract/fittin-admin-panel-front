import 'package:flutter/material.dart';

class CategoryManageButton extends StatefulWidget {
  const CategoryManageButton({super.key});

  @override
  State<StatefulWidget> createState() => _CategoryManageButtonState();
}

class _CategoryManageButtonState extends State<CategoryManageButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.edit)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.watch)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.delete)),
        )
      ],
    );
  }
}
