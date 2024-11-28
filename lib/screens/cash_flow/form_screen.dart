import 'package:cash_flow/controllers/db_controller.dart';
import 'package:cash_flow/screens/cash_flow/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormScreen extends GetView<DbController> {
  FormScreen({super.key});

  final TextEditingController amountController = TextEditingController();

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
          ],
        ),
      ),
    );
  }
}
