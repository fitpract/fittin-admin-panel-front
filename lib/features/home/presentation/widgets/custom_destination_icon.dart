import 'package:flutter/material.dart';

class CustomDestinationIcon extends StatelessWidget {
  final Icon icon;
  final bool selected;

  const CustomDestinationIcon({
    super.key,
    required this.icon,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 5,
          height: 50,
          color: selected ? Theme.of(context).colorScheme.primary : Colors.transparent,
        ),
        const SizedBox(
          width: 18,
        ),
        icon,
        /*const SizedBox(
          width: 10,
        ),*/
        const Expanded(flex: 1, child: SizedBox())
      ],
    );
  }
}
