import 'package:cash_flow/controllers/db_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListScreen extends GetView<DbController> {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getCashFlows();
    return controller.obx((cashFlows) {
      List<ListTile> listCashFlows = cashFlows?.map((cashFlow) => ListTile(
          title: Text(cashFlow.type),
          subtitle: Text(cashFlow.source),
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
