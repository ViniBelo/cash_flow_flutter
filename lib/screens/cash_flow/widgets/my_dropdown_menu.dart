import 'package:flutter/material.dart';

class MyDropdownMenu extends StatelessWidget {
  const MyDropdownMenu({
    super.key,
    required this.dropDownMenuEntries,
    required this.controller,
    this.onSelected,
  });

  final List<String> dropDownMenuEntries;
  final TextEditingController controller;
  final ValueChanged? onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
      child: DropdownMenu<String>(
        onSelected: onSelected,
        controller: controller,
        initialSelection: dropDownMenuEntries.first,
        width: double.infinity,
        textStyle: const TextStyle(
          fontSize: 24,
        ),
        dropdownMenuEntries: dropDownMenuEntries
            .map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry(value: value, label: value);
        }).toList(),
      ),
    );
  }
}

