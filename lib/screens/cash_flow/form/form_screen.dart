import 'package:cash_flow/controllers/db_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cash_flow/models/cash_flow.dart' as model;
import 'package:intl/intl.dart';

import 'form_fields_widget.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FormFieldsWidget(
              amountController: amountController,
              typeController: typeController,
              sourceController: sourceController,
              dateController: dateController,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: OutlinedButton(
                onPressed: () {
                    controller.insertCashFlow(
                          cashFlow: model.CashFlow(
                            amount: double.parse(amountController.text),
                            type: typeController.text,
                            source: sourceController.text,
                            expirationDate: DateTime.parse(
                              DateFormat('yyyy-MM-dd').format(
                                DateFormat('dd/MM/yyyy').parse(dateController.text),
                              ),
                            ),
                          ),
                        );
                  Get.back();
                },
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
