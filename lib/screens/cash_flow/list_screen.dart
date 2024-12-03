import 'package:cash_flow/controllers/db_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListScreen extends GetView<DbController> {
  const ListScreen({super.key});

  deleteItem(String id) {
    controller.deleteCashFlow(id: id);
    controller.getCashFlows();
  }

  @override
  Widget build(BuildContext context) {
    controller.getCashFlows();
    double size = 18;

    return controller.obx(
          (cashFlows) {
        controller.getCashFlows();
        return ListView.separated(
          itemBuilder: (context, index) {
            final cashFlow = cashFlows![index];
            return Slidable(
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      deleteItem(cashFlow.id);
                    },
                    backgroundColor: const Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),
              child: ListTile(
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
                  "\$${cashFlow.amount.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: size),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(height: 1),
          itemCount: cashFlows?.length ?? 0,
        );
      },
      onError: (error) => Text(error.toString()),
      onLoading: const Center(child: CircularProgressIndicator()),
    );
  }
}
