import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
    this.readOnly = false,
    this.onTap,
    this.inputFormatters,
  });

  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController controller;
  final TextInputType textInputType;
  final Icon? prefixIcon;
  final bool readOnly;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
      child: TextFormField(
        onTap: onTap,
        readOnly: readOnly,
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: prefixIcon,
        ),
        style: const TextStyle(
          fontSize: 24,
        ),
        inputFormatters: inputFormatters,
        keyboardType: textInputType,
        maxLines: 1,
      ),
    );
  }
}
