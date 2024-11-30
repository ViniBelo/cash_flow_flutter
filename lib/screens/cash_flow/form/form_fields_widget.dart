import 'package:flutter/material.dart';

import '../widgets/my_dropdown_menu.dart';
import '../widgets/my_text_form_field.dart';

class FormFieldsWidget extends StatefulWidget {
  const FormFieldsWidget({
    super.key,
    required this.amountController,
    required this.typeController,
    required this.sourceController,
    required this.dateController
  });

  final TextEditingController amountController;
  final TextEditingController typeController;
  final TextEditingController sourceController;
  final TextEditingController dateController;

  @override
  State<FormFieldsWidget> createState() => _FormFieldsWidgetState();
}

class _FormFieldsWidgetState extends State<FormFieldsWidget> {
  List<String> sourceList = const ['Salary', 'Extras'];

  void setSource(String? selectedType) {
    setState(() {
      sourceList = (selectedType == 'Credit')
          ? const ['Salary', 'Extras']
          : const ['Housing', 'Food', 'Health', 'Transport'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextFormField(
          controller: widget.amountController,
          textInputType: TextInputType.number,
          prefixIcon: const Icon(
            Icons.attach_money,
            size: 32,
          ),
        ),
        MyDropdownMenu(
          onSelected: (value) {
            widget.typeController.text = value!;
            setSource(value);
          },
          dropDownMenuEntries: const ['Credit', 'Debit'],
          controller: widget.typeController,
        ),
        MyDropdownMenu(
          dropDownMenuEntries: sourceList,
          controller: widget.sourceController,
        ),
        MyTextFormField(
          controller: widget.dateController,
          textInputType: TextInputType.datetime,
          prefixIcon: const Icon(
            Icons.calendar_month,
            size: 32,
          ),
        ),
      ],
    );
  }
}