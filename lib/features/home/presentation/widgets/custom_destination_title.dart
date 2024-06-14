import 'package:flutter/material.dart';

class CustomDestinationTitle extends StatelessWidget {
  final String title;
  final bool hasDropDown;
  final bool? expanded;
  final VoidCallback? onExpandDropdown;
  final List<Widget>? dropdownItems;

  const CustomDestinationTitle({
    super.key,
    required this.title,
    required this.hasDropDown,
    this.expanded,
    this.onExpandDropdown,
    this.dropdownItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          const Expanded(child: SizedBox()),
          if (hasDropDown)
            IconButton(
              onPressed: () => onExpandDropdown,
              icon: Icon(
                Icons.expand_more,
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
        ],
      ),
    );
  }
}
