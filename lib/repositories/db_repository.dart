import 'package:cash_flow/source/local/database.dart';
import 'package:get/get.dart';
import 'package:cash_flow/models/cash_flow.dart' as model;

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
        amount: cashFlow?.amount ?? 0.0,
        type: cashFlow?.type ?? "",
        source: cashFlow?.source ?? "",
        expirationDate: cashFlow?.expirationDate ?? DateTime.now(),
        isPaid: cashFlow?.isPaid ?? true
      ),
    );
  }
}

abstract class DbRepository {
  Future<List<CashFlowData>> getCashFlows();
  Future<int> insertCashFlow({model.CashFlow? cashFlow});
}