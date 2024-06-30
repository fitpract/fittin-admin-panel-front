import 'package:flutter/material.dart';
import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';

import '../../style/theme/theme_text_styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return Theme.of(context).colorScheme.primaryContainer; // Темный цвет при наведении
              }
              return Theme.of(context).colorScheme.primary; // Цвет по умолчанию
            },
          ),
          foregroundColor: WidgetStateProperty.all<Color>(Theme.of(context).colorScheme.surfaceVariant),
        ),
        child: isLoading
            ? CircularProgressIndicator(color: Theme.of(context).colorScheme.surfaceVariant,)
            : Text(buttonText, style: button,),
      ),
    );
  }
}