import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final TextInputType textInputType;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: prefixIcon,
        ),
        style: const TextStyle(
          fontSize: 24,
        ),
        keyboardType: textInputType,
        maxLines: 1,
      ),
    );
  }
}
