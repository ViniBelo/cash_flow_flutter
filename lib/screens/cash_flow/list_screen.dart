import 'package:cash_flow/controllers/db_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ListScreen extends GetView<DbController> {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getCashFlows();
    double size = 18;
    return controller.obx((cashFlows) {
      List<ListTile> listCashFlows = cashFlows?.map((cashFlow) => ListTile(
          leading: Icon(
            cashFlow.type == 'Credit' ? Icons.arrow_upward : Icons.arrow_downward,
            color: cashFlow.type == 'Credit' ? Colors.green : Colors.red,
          ),
          trailing: Text(
            DateFormat('dd/MM/yyyy').format(cashFlow.expirationDate),
            style: TextStyle(fontSize: size),
          ),
          title: Text(
            cashFlow.source,
            style: TextStyle(fontSize: size),
          ),
          subtitle: Text(
            cashFlow.amount.toString(),
            style: TextStyle(fontSize: size),
          ),
        ),
      ).toList() ?? [];
      return ListView.separated(
          itemBuilder: (context, index) => listCashFlows[index],
          separatorBuilder: (context, index) => const Divider(
            height: 1,
          ),
          itemCount: listCashFlows.length
      );
    },
      onError: (error) => Text(error.toString()),
      onLoading: const CircularProgressIndicator()
    );
  }
}
