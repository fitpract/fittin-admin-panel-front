import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumInputWidget extends StatefulWidget {
  const NumInputWidget({super.key, required this.text, required this.controller});
  final String text;
  final TextEditingController controller;

  @override
  State<NumInputWidget> createState() => _NumInputWidgetState();
}

class _NumInputWidgetState extends State<NumInputWidget> {


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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        SizedBox(
          width: 700,
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        )
      ],
    );
  }
}
