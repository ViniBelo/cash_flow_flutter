import 'package:cash_flow/models/cash_flow.dart' as model;
import 'package:cash_flow/repositories/db_repository.dart';
import 'package:cash_flow/source/local/database.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import '../repositories/api_repository.dart';

class DbController extends GetxController with StateMixin<List<CashFlowData>> {
  DbController({required this.repository}){
    change(null, status: RxStatus.empty());
  }

  final DbRepository repository;

  Future<void> getCashFlows() async {
    change(null, status: RxStatus.loading());

    await repository.getCashFlows()
        .then((value) {
      change(value, status: RxStatus.success());
    })
        .onError((error, stackTrace) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }

  Future<int> insertCashFlow({model.CashFlow? cashFlow}) {
    return repository.insertCashFlow(cashFlow: cashFlow);
  }

  Future<int> deleteCashFlow({required String id}) {
    return repository.deleteCashFlow(id: id);
  }
}