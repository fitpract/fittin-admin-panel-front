import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';
import 'package:flutter/material.dart';

import '../../style/theme/theme_text_styles.dart';

class CustomTextInput extends StatelessWidget {
  final double borderRadius;
  final Color borderColor;
  final Color cursorColor;
  final Color focusedBorderColor;
  final Color focusedErrorBorderColor;
  final Color selectionColor;
  final String labelText;
  final bool obscureText;
  final Function(String) onChanged;
  final bool showWarning;

  const CustomTextInput({
    super.key,
    this.borderRadius = 8.0,
    this.borderColor = AppColors.nonActiveField,
    this.cursorColor = AppColors.nonActiveField,
    this.focusedBorderColor = AppColors.activeField,
    this.focusedErrorBorderColor = Colors.red,
    this.selectionColor = Colors.orangeAccent,
    required this.labelText,
    this.obscureText = false,
    required this.onChanged,
    this.showWarning = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            textSelectionTheme: TextSelectionThemeData(
              selectionColor: selectionColor,
            ),
          ),
          child: TextField(
            obscureText: obscureText,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: focusedBorderColor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: focusedErrorBorderColor),
              ),
              labelText: labelText,
              labelStyle: bodyLarge,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            ),
            cursorColor: cursorColor,
          ),
        ),
        if (showWarning)
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Icon(Icons.error, color: Colors.orange, size: 20),
                SizedBox(width: 8.0),
                Text('Заполните это поле.', style: TextStyle(color: Colors.orange)),
              ],
            ),
          ),
      ],
    );
  }
}
