import 'package:flutter/material.dart';

class AddProductButton extends StatefulWidget {
  const AddProductButton({super.key});

  @override
  State<StatefulWidget> createState() => _AddProductButtonState();
}

class _AddProductButtonState extends State<AddProductButton> {
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
