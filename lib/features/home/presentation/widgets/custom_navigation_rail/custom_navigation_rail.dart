import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_navigation_rail/custom_navigation_rail_destination.dart';
import 'package:fittin_admin_panel/features/home/presentation/widgets/custom_navigation_rail/destination_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomNavigationRail extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final List<CustomNavigationRailDestination> destinations;
  final bool extended;
  final EdgeInsetsGeometry destinationPadding;
  final Color backgroundColor;
  final Color destinationColor;

  const CustomNavigationRail({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
    this.extended = true,
    this.destinationPadding = EdgeInsets.zero,
    this.destinationColor = Colors.white,
    this.backgroundColor = Colors.grey,
  });

  @override
  State<CustomNavigationRail> createState() => _CustomNavigationRailState();
}

class _CustomNavigationRailState extends State<CustomNavigationRail> {
  @override
  initState() {
    super.initState();
    destinationBackground = widget.destinationColor;
    hoverDestinationBackground = widget.destinationColor.withOpacity(0.1);
  }

  Map<int, int> expandedIndexes = {};

  void _expandDestination(int index) {
    setState(() {
      expandedIndexes.putIfAbsent(index, () => 0);
    });
  }

  void _collapseDestination(int index) {
    setState(() {
      expandedIndexes.remove(index);
    });
  }

  int hoverDestinationIndex = -1;

  late Color destinationBackground;

  late Color hoverDestinationBackground;

  void _onMouseHover(PointerEvent details) {
    setState(() {
      hoverDestinationBackground = destinationBackground.withOpacity(0.1);
    });
  }

  void _onMouseUnhover(PointerEvent details) {
    setState(() {
      hoverDestinationBackground = destinationBackground;
    });
  }

  void _setHoverIndex(int index) {
    setState(() {
      hoverDestinationIndex = index;
    });
  }

  List<int> _toSelectedIndexFromTabRouter(int value) {
    int ind = -1;
    int index = -1;
    int currIndex = -1;
    while (currIndex < value) {
      ind = -1;
      index++;
      currIndex++;
      final destination = widget.destinations[index];
      if (currIndex < value) {
        if (destination.hasDropdown) {
          final items = destination.dropdownItems;
          for (int j = 0; j < items!.length; j++) {
            currIndex++;
            if (currIndex == value) {
              ind = -1;
              break;
            } else {
              ind = j;
            }
          }
        }
      }
    }
    if (ind != -1) {
      expandedIndexes.putIfAbsent(index, () => ind);
    }
    return [index, ind];
  }

  int _toSelectedIndexFromDestination(int index) {
    int ind = index;
    for (int i = 0; i < index; i++) {
      final items = widget.destinations[i].dropdownItems;
      if (items != null) {
        ind = ind + items.length;
      }
    }
    return ind;
  }

  int _toSelectedIndexFromDropdown(int index, int ind) {
    int result = 0;
    for (int i = 0; i < widget.destinations.length; i++) {
      if (i == index) {
        result += ind + 1;
        break;
      } else {
        final items = widget.destinations[i].dropdownItems;
        if (items != null) {
          result += items.length;
        }
        result++;
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return widget.extended
        ? _extendedNavigationRail()
        : _collapsedNavigationRail();
  }

  Widget _extendedNavigationRail() {
    return Container(
      color: Colors.grey[200],
      width: 230,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(widget.destinations.length, (index) {
          final destination = widget.destinations[index];
          final selected =
              index == _toSelectedIndexFromTabRouter(widget.selectedIndex)[0];

          return Padding(
            padding: widget.destinationPadding,
            child: Container(
              color: index == hoverDestinationIndex
                  ? hoverDestinationBackground
                  : destinationBackground,
              child: Column(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    onEnter: (event) {
                      _setHoverIndex(index);
                      _onMouseHover(event);
                    },
                    onExit: (event) {
                      _setHoverIndex(-1);
                      _onMouseUnhover(event);
                    },
                    child: InkWell(
                      onTap: () {
                        widget.onDestinationSelected(
                            _toSelectedIndexFromDestination(index));
                        if (destination.hasDropdown) {
                          _expandDestination(index);
                          setState(() {
                            expandedIndexes.update(index, (value) => 0);
                          });
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                _icon(selected, destination.icon),
                                Text(
                                  destination.label,
                                  style: TextStyle(
                                    color: selected
                                        ? Theme.of(context).colorScheme.primary
                                        : Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                    fontWeight: selected
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (destination.hasDropdown)
                            expandedIndexes.containsKey(index)
                                ? IconButton(
                                    onPressed: () =>
                                        _collapseDestination(index),
                                    icon: const Icon(Icons.expand_less),
                                  )
                                : IconButton(
                                    onPressed: () => _expandDestination(index),
                                    icon: const Icon(Icons.expand_more),
                                  ),
                        ],
                      ),
                    ),
                  ),
                  if (destination.hasDropdown &&
                      destination.dropdownItems != null &&
                      expandedIndexes.containsKey(index))
                    DestinationDropdown(
                      selectedIndex: expandedIndexes[index]!,
                      dropdownItems: destination.dropdownItems!,
                      onSelectItem: (int ind) {
                        widget.onDestinationSelected(
                            _toSelectedIndexFromDropdown(index, ind));
                        setState(() {
                          expandedIndexes.update(index, (value) => ind);
                        });
                      },
                    ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  OverlayEntry? _overlayEntry;

  void _showOverlay(BuildContext context, int index) {
    _overlayEntry = _createOverlayEntry(context, index);
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry(BuildContext context, int index) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx, //+ renderBox.size.width + 10,
        top: offset.dy, //- renderBox.size.height - 10,
        child: Material(
          elevation: 4.0,
          child: Container(
            height: 60,
            padding: const EdgeInsets.all(8),
            color: Theme.of(context).colorScheme.primary,
            child: Text(
              'label',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ),
      ),
    );
  }

  Widget _collapsedNavigationRail() {
    return Container(
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(widget.destinations.length, (index) {
          final destination = widget.destinations[index];
          final selected =
              index == _toSelectedIndexFromTabRouter(widget.selectedIndex)[0];

          return Padding(
            padding: widget.destinationPadding,
            child: Container(
              color: destinationBackground,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (event) {
                  _setHoverIndex(index);
                  //_showOverlay(context, index);
                  _onMouseHover(event);
                },
                onExit: (event) {
                  _setHoverIndex(-1);
                  //_hideOverlay();
                  _onMouseUnhover(event);
                },
                child: index == hoverDestinationIndex
                    ? InkWell(
                        onTap: () => widget.onDestinationSelected(index),
                        child: Container(
                          width: 230,
                          color: Theme.of(context).colorScheme.primary,
                          child: Row(
                            children: [
                              _icon(selected, destination.icon),
                              const SizedBox(
                                height: 4,
                                width: 20,
                              ),
                              Text(
                                destination.label,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () => widget.onDestinationSelected(index),
                        child: _icon(selected, destination.icon),
                      ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _icon(bool selected, Widget? icon) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 60,
          color: selected
              ? Theme.of(context).colorScheme.primary
              : Colors.transparent,
        ),
        const SizedBox(width: 18),
        icon ?? const SizedBox(width: 20),
        const SizedBox(width: 18),
        //const Expanded(child: SizedBox(), flex: 1),
      ],
    );
  }
}
