import 'package:flutter/material.dart';

class AddCategoryButton extends StatefulWidget {
  const AddCategoryButton({super.key});

  @override
  State<StatefulWidget> createState() => _AddCategoryButtonState();
}

class _AddCategoryButtonState extends State<AddCategoryButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            // Border
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onPressed: (){},
        child: const Text("Добавить")
    );
  }
}
