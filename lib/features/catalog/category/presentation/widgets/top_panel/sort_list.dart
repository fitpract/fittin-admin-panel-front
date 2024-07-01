import 'package:fittin_admin_panel/core/style/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/style/theme/theme_text_styles.dart';

class SortingDropdown extends StatefulWidget {
  const SortingDropdown({super.key});

  @override
  _SortingDropdownState createState() => _SortingDropdownState();
}

class _SortingDropdownState extends State<SortingDropdown> {
  String _selectedSortOption = 'По умолчанию';
  final LayerLink _layerLink = LayerLink();
  bool _isDropdownOpened = false;

  OverlayEntry? _overlayEntry;

  void _toggleDropdown() {
    setState(() {
      if (_isDropdownOpened) {
        _overlayEntry?.remove();
        _overlayEntry = null;
      } else {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context).insert(_overlayEntry!);
      }
      _isDropdownOpened = !_isDropdownOpened;
    });
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    Size size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0.0, size.height - 1), // Adjust offset to connect borders
          child: Material(
            elevation: 0.0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.nonActiveField),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: ['По умолчанию', 'По алфавиту', 'По приоритету сортировки']
                    .map((String value) {
                  bool isSelected = value == _selectedSortOption;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedSortOption = value;
                      });
                      _toggleDropdown();
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.selector : AppColors.white,
                        border: Border(
                          bottom: BorderSide(
                            color: value == 'По приоритету сортировки' ? Colors.transparent : AppColors.black,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Text(
                        value,
                        style: TextStyle(
                          color: isSelected ? AppColors.white : AppColors.nonActiveField,
                          fontSize: label.fontSize,
                          fontWeight: label.fontWeight,
                          fontFamily: label.fontFamily,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _toggleDropdown,
        child: Container(
          width: 246,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.nonActiveField),
            borderRadius: _isDropdownOpened
                ? const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            )
                : BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _selectedSortOption,
                style: TextStyle(
                  color: AppColors.nonActiveField,
                  fontSize: label.fontSize,
                  fontWeight: label.fontWeight,
                  fontFamily: label.fontFamily,
                ),
              ),
              const Icon(Icons.arrow_drop_down, color: AppColors.nonActiveField),
            ],
          ),
        ),
      ),
    );
  }
}
