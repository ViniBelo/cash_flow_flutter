import 'package:cash_flow/source/local/database.dart';
import 'package:get/get.dart';
import 'package:cash_flow/models/cash_flow.dart' as model;
import 'package:uuid/uuid.dart';

class DbRepositoryImpl implements DbRepository {
  @override
  Future<List<CashFlowData>> getCashFlows() {
    AppDatabase appDatabase = Get.find<AppDatabase>();
    return appDatabase.select(appDatabase.cashFlow).get();
  }

  @override
  Future<int> insertCashFlow({model.CashFlow? cashFlow}) {
    AppDatabase appDatabase = Get.find<AppDatabase>();
    return appDatabase
        .into(appDatabase.cashFlow)
        .insert(CashFlowCompanion.insert(
        id: const Uuid().v7().toString(),
        amount: cashFlow?.amount ?? 0.0,
        type: cashFlow?.type ?? "",
        source: cashFlow?.source ?? "",
        expirationDate: cashFlow?.expirationDate ?? DateTime.now(),
      ),
    );
  }

  @override
  Future<int> deleteCashFlow({required String id}) {
    final appDatabase = Get.find<AppDatabase>();

    return (appDatabase.delete(appDatabase.cashFlow)
      ..where((cf) => cf.id.equals(id.toString())))
        .go();
  }
}

abstract class DbRepository {
  Future<List<CashFlowData>> getCashFlows();
  Future<int> insertCashFlow({model.CashFlow? cashFlow});
  Future<int> deleteCashFlow({required String id});
}