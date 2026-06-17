import 'package:flutter/material.dart';
import 'package:tabib_app/core/extension/app_extension.dart';

class FilterChips extends StatefulWidget {
  final List<String> filters;
  final Function(int) onSelected;
  final int initialIndex;

  const FilterChips({
    super.key,
    required this.filters,
    required this.onSelected,
    this.initialIndex = 0,
  });

  @override
  State<FilterChips> createState() => _RecordFilterChipsState();
}

class _RecordFilterChipsState extends State<FilterChips> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.filters.length, (index) {
          final isSelected = _selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
              label: Text(
                widget.filters[index],
                style: theme.medium13.copyWith(
                  color: isSelected ? theme.whiteColor : theme.textColor300,
                ),
              ),
              selected: isSelected,
              onSelected: (selected) {
                if (selected) {
                  setState(() {
                    _selectedIndex = index;
                  });
                  widget.onSelected(index);
                }
              },
              selectedColor: theme.primaryColor,
              backgroundColor: const Color(0xFFF2F4F7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide.none,
              ),
              showCheckmark: false,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          );
        }),
      ),
    );
  }
}
