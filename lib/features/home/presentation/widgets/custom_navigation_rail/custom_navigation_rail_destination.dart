import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_navigation_rail/custom_navigation_rail_dropdown_item.dart';
import 'package:flutter/material.dart';

class CustomNavigationRailDestination {
  final IconData icon;
  final String label;
  final bool hasDropdown;
  final List<CustomNavigationRailDropdownItem>? dropdownItems;

  CustomNavigationRailDestination.withDropdown({
    required this.icon,
    required this.label,
    required this.dropdownItems,
  })  : hasDropdown = true,
        assert(dropdownItems != null && dropdownItems.isNotEmpty);

  CustomNavigationRailDestination.withoutDropdown({
    required this.icon,
    required this.label,
  })  : hasDropdown = false,
        dropdownItems = null;
}