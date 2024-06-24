import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';
import 'package:flutter/material.dart';

import '../../style/theme/theme_text_styles.dart';

class CustomTextInput extends StatelessWidget {
  final double borderRadius;
  final Color borderColor;
  final Color cursorColor;
  final Color focusedBorderColor;
  final Color focusedErrorBorderColor;
  final Color emptyNotification;
  final String labelText;
  final bool obscureText;
  final Function(String) onChanged;
  final bool showWarning;
  final String errorMessage;

  const CustomTextInput({
    super.key,
    this.borderRadius = 8.0,
    this.borderColor = AppColors.nonActiveField,
    this.cursorColor = AppColors.nonActiveField,
    this.focusedBorderColor = AppColors.activeField,
    this.focusedErrorBorderColor = AppColors.system,
    this.emptyNotification = AppColors.orangeButton,
    required this.labelText,
    this.obscureText = false,
    required this.onChanged,
    this.showWarning = false,
    this.errorMessage = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            textSelectionTheme: const TextSelectionThemeData(),
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
              labelStyle: body,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            ),
            cursorColor: cursorColor,
          ),
        ),
        SizedBox(
          height: 50,
          child: Visibility(
            visible: showWarning,
            child: Row(
              children: [
                Icon(Icons.error, color: emptyNotification, size: 20),
                 Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text(
                    errorMessage,
                    style: emptyLabel,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
