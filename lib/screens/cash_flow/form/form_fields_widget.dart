import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

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

  void setDate(DateTime? selectedDate) {
    setState(() {
      widget.dateController.text = DateFormat("dd/MM/yyyy").format(selectedDate!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextFormField(
          controller: widget.amountController,
          inputFormatters: [
            TextInputFormatter.withFunction((oldValue, newValue) {
              final text = newValue.text;

              if (!RegExp(r'^\d*\.?\d{0,2}$').hasMatch(text)) {
                return oldValue;
              }

              return newValue;
            }),
          ],
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
          onTap: () async {
            DateTime? selectedDate = await showDatePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
            );
            setDate(selectedDate);
          },
          readOnly: true,
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