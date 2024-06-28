import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';
import 'package:flutter/material.dart';

import '../../style/theme/theme_text_styles.dart';

class CustomTextInput extends StatefulWidget {
  final double borderRadius;
  final Color borderColor;
  final Color cursorColor;
  final Color focusedBorderColor;
  final Color focusedErrorBorderColor;
  final String labelText;
  final bool obscureText;
  final Function(String) onChanged;
  final bool showEmptyWarning;
  final bool showSystemWarning;
  final String errorMessage;
  final String? initialValue;

  const CustomTextInput({
    super.key,
    this.borderRadius = 8.0,
    this.borderColor = AppColors.nonActiveField,
    this.cursorColor = AppColors.nonActiveField,
    this.focusedBorderColor = AppColors.activeField,
    this.focusedErrorBorderColor = AppColors.system,
    required this.labelText,
    this.obscureText = false,
    required this.onChanged,
    this.showEmptyWarning = false,
    this.showSystemWarning = false,
    this.errorMessage = '',
    this.initialValue,
  });

  @override
  _CustomTextInputState createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  late TextEditingController _controller;
  late String _initialValue;

  @override
  void initState() {
    super.initState();
    _initialValue = widget.initialValue ?? '';
    _controller = TextEditingController(text: _initialValue);
    _controller.addListener(_handleChange);
  }

  @override
  void didUpdateWidget(CustomTextInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      _initialValue = widget.initialValue ?? '';
      _controller.value = _controller.value.copyWith(
        text: _initialValue,
        selection: TextSelection.collapsed(offset: _initialValue.length),
      );
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_handleChange);
    _controller.dispose();
    super.dispose();
  }

  void _handleChange() {
    widget.onChanged(_controller.text);
  }

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
            controller: _controller,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.focusedBorderColor),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(color: widget.focusedErrorBorderColor),
              ),
              labelText: widget.labelText,
              labelStyle: body,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            ),
            cursorColor: widget.cursorColor,
          ),
        ),
        SizedBox(
          height: 50,
          child: Visibility(
            visible: widget.showEmptyWarning || widget.showSystemWarning,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(Icons.error,
                      color: widget.showEmptyWarning
                          ? AppColors.orangeButton
                          : AppColors.system,
                      size: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, top: 10.5),
                  child: Text(widget.errorMessage, style: errorLabel),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
