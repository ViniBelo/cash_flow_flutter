import 'package:cash_flow/controllers/db_controller.dart';
import 'package:cash_flow/screens/cash_flow/widgets/my_dropdown_menu.dart';
import 'package:cash_flow/screens/cash_flow/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormScreen extends GetView<DbController> {
  FormScreen({super.key});

  final TextEditingController amountController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController sourceController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cash Flow"),
      ),
      body: Center(
        child: Column(
          children: [
            MyTextFormField(
              controller: amountController,
              textInputType: TextInputType.number,
              prefixIcon: const Icon(
                Icons.attach_money,
                size: 32,
              ),
            ),
            MyDropdownMenu(
              dropDownMenuEntries: const ['Credit', 'Debit'],
              controller: typeController,
            ),
            MyDropdownMenu(
              dropDownMenuEntries: (typeController.text.toString() == 'Credit')
                  ? const ['Salary', 'Extras']
                  : const ['Housing', 'Food', 'Health', 'Transport'],
              controller: sourceController,
            ),
            MyTextFormField(
              controller: dateController,
              textInputType: TextInputType.datetime,
              prefixIcon: const Icon(
                Icons.calendar_month,
                size: 32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: OutlinedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.save),
                      Text(
                        "Save",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
