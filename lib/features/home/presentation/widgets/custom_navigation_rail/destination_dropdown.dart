import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_navigation_rail/custom_navigation_rail_dropdown_item.dart';
import 'package:flutter/material.dart';

class DestinationDropdown extends StatefulWidget {
  final int selectedIndex;
  final List<CustomNavigationRailDropdownItem> dropdownItems;
  final ValueChanged<int> onSelectItem;

  const DestinationDropdown({
    super.key,
    required this.selectedIndex,
    required this.dropdownItems,
    required this.onSelectItem,
  });

  @override
  State<DestinationDropdown> createState() => _DestinationDropDownState();
}

class _DestinationDropDownState extends State<DestinationDropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        widget.dropdownItems.length,
            (index) {
          final dropdownItem = widget.dropdownItems[index];
          return MouseRegion(
            cursor: SystemMouseCursors.click,
            child: InkWell(
              onTap: () => widget.onSelectItem(index),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    _indicator(index == widget.selectedIndex),
                    Text(dropdownItem.label),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _indicator(bool selected) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 40,
          color: selected
              ? Theme.of(context).colorScheme.primary
              : Colors.transparent,
        ),
        const SizedBox(width: 56),
      ],
    );
  }
}