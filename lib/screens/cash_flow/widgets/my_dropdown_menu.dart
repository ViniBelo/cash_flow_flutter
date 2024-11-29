import 'package:flutter/material.dart';

class MyDropdownMenu extends StatelessWidget {
  const MyDropdownMenu({
    super.key,
    required this.dropDownMenuEntries,
    required this.controller,
  });

  final List<String> dropDownMenuEntries;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: DropdownMenu<String>(
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

