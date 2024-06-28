import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key, required this.text, required this.controller});
  final String text;
  final TextEditingController controller;

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {

  @override
  void initState() {
    text = widget.text;
    controller = widget.controller;
    super.initState();
  }

  late final String text;
  late final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.text),
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}
